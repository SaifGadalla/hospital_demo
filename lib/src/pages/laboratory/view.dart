import 'package:intl/intl.dart';

import '../../../common.dart';
import 'add_lab_order_dialog/dialog.dart';
import 'controller.dart';

class LaboratoryPage extends ConsumerStatefulWidget {
  const LaboratoryPage({super.key});

  @override
  ConsumerState<LaboratoryPage> createState() => _LaboratoryPageState();
}

class _LaboratoryPageState extends ConsumerState<LaboratoryPage>
    with SearchMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(laboratoryControllerProvider.notifier).loadLabOrders();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(laboratoryControllerProvider);
    final controller = ref.read(laboratoryControllerProvider.notifier);

    return AppPage(
      searchFormGroup: searchFormGroup,
      onSearchFieldChanged: (control) async {
        await controller.getLabOrders(searchTerm: control.value);
      },
      title: context.l10n.laboratory_view_title,
      description: context.l10n.laboratory_view_description,
      mainButtonTitle: context.l10n.laboratory_view_newOrder,
      mainButtonOnTap: () async {
        await AddLabOrderDialog.show(context);
        controller.loadLabOrders();
      },
      numberCards: [
        NumberCard(
          title: context.l10n.laboratory_view_totalOrders,
          value: state.labOrders.length.toString(),
          icon: Icons.science,
        ),
        NumberCard(
          title: context.l10n.laboratory_view_pending,
          value: state.labOrders
              .where((o) => o.status?.toLowerCase() == 'pending')
              .length
              .toString(),
          icon: Icons.pending,
        ),
        NumberCard(
          title: context.l10n.laboratory_view_inProgress,
          value: state.labOrders
              .where(
                (o) =>
                    o.status?.toLowerCase() == 'inprogress' ||
                    o.status?.toLowerCase() == 'in_progress',
              )
              .length
              .toString(),
          icon: Icons.autorenew,
        ),
        NumberCard(
          title: context.l10n.laboratory_view_statPriority,
          value: state.labOrders
              .where((o) => o.priority?.toLowerCase() == 'stat')
              .length
              .toString(),
          icon: Icons.hourglass_top,
        ),
      ],
      hasSearch: true,
      secondarySearchHeaderWidgets: [
        ReactiveForm(
          formGroup: controller.formGroup,
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              AppDropDownButton(
                formControlName: 'status',
                items: [
                  DropdownMenuItem(
                    value: null,
                    child: Text(context.l10n.laboratory_view_allStatuses),
                  ),
                  DropdownMenuItem(
                    value: 'pending',
                    child: Text(context.l10n.laboratory_view_pending),
                  ),
                  DropdownMenuItem(
                    value: 'sample_collected',
                    child: Text(context.l10n.laboratory_view_sampleCollected),
                  ),
                  DropdownMenuItem(
                    value: 'in_progress',
                    child: Text(context.l10n.laboratory_view_inProgress),
                  ),
                  DropdownMenuItem(
                    value: 'completed',
                    child: Text(context.l10n.laboratory_view_completed),
                  ),
                  DropdownMenuItem(
                    value: 'approved',
                    child: Text(context.l10n.laboratory_view_approved),
                  ),
                  DropdownMenuItem(
                    value: 'cancelled',
                    child: Text(context.l10n.laboratory_view_cancelled),
                  ),
                ],
                onChanged: (_) => controller.getLabOrders(),
                hint: context.l10n.laboratory_view_filterByStatus,
              ),
              AppDropDownButton(
                formControlName: 'priority',
                items: [
                  DropdownMenuItem(
                    value: null,
                    child: Text(context.l10n.laboratory_view_allPriorities),
                  ),
                  DropdownMenuItem(
                    value: 'routine',
                    child: Text(context.l10n.laboratory_view_routine),
                  ),
                  DropdownMenuItem(
                    value: 'urgent',
                    child: Text(context.l10n.laboratory_view_urgent),
                  ),
                  DropdownMenuItem(
                    value: 'stat',
                    child: Text(context.l10n.laboratory_view_stat),
                  ),
                ],
                onChanged: (_) => controller.getLabOrders(),
                hint: context.l10n.laboratory_view_filterByPriority,
              ),
              TextButton(
                onPressed: () {
                  controller.formGroup.reset();
                  searchFormGroup.reset();
                  controller.getLabOrders();
                },
                child: Text(context.l10n.laboratory_view_clear),
              ),
            ],
          ),
        ),
      ],
      table: state.isLoading
          ? const Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: CircularProgressIndicator(),
              ),
            )
          : DataTable(
              headingRowColor: WidgetStateProperty.all(
                context.colors.surfaceElevated,
              ),
              columns: [
                DataColumn(
                  label: Text(context.l10n.laboratory_view_columnOrder),
                ),
                DataColumn(
                  label: Text(context.l10n.laboratory_view_columnDate),
                ),
                DataColumn(
                  label: Text(context.l10n.laboratory_view_columnPatient),
                ),
                DataColumn(
                  label: Text(context.l10n.laboratory_view_columnTests),
                ),
                DataColumn(
                  label: Text(context.l10n.laboratory_view_columnPriority),
                ),
                DataColumn(
                  label: Text(context.l10n.laboratory_view_columnStatus),
                ),
                DataColumn(
                  label: Text(context.l10n.laboratory_view_columnActions),
                ),
              ],
              rows: state.labOrders.map((order) {
                final testsSummary =
                    order.tests?.map((t) => t.testName ?? '').join(', ') ??
                    'No tests';
                return DataRow(
                  cells: [
                    DataCell(Text(order.orderNumber ?? '')),
                    DataCell(
                      Text(
                        order.orderDate != null
                            ? DateFormat(
                                'yyyy-MM-dd HH:mm',
                              ).format(order.orderDate!)
                            : '',
                      ),
                    ),
                    DataCell(Text(order.patientId ?? '')),
                    DataCell(Text(testsSummary)),
                    DataCell(Text(order.priority ?? '')),
                    DataCell(Text(order.status ?? '')),
                    DataCell(
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.visibility),
                            tooltip: context.l10n.laboratory_view_viewDetails,
                            onPressed: () {
                              _showLabOrderDetails(context, order);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.cancel),
                            tooltip:
                                context.l10n.laboratory_view_cancelOrderTooltip,
                            onPressed: () {
                              _showCancelConfirmation(
                                context,
                                order,
                                controller,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
    );
  }

  void _showLabOrderDetails(BuildContext context, LabOrder order) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        scrollable: true,
        title: Text(
          context.l10n.laboratory_view_orderDetailsTitle(
            order.orderNumber ?? '',
          ),
        ),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow(
                context.l10n.laboratory_view_columnOrder,
                order.orderNumber,
              ),
              _detailRow(
                context.l10n.laboratory_view_patientId,
                order.patientId,
              ),
              _detailRow(context.l10n.laboratory_view_doctorId, order.doctorId),
              _detailRow(
                context.l10n.laboratory_view_columnPriority,
                order.priority,
              ),
              _detailRow(
                context.l10n.laboratory_view_columnStatus,
                order.status,
              ),
              _detailRow(
                context.l10n.laboratory_view_clinicalIndication,
                order.clinicalIndication,
              ),
              _detailRow(
                context.l10n.laboratory_view_specimenType,
                order.specimenType,
              ),
              _detailRow(
                context.l10n.laboratory_view_orderDate,
                order.orderDate != null
                    ? DateFormat('yyyy-MM-dd HH:mm').format(order.orderDate!)
                    : null,
              ),
              if (order.tests != null && order.tests!.isNotEmpty) ...[
                const Divider(),
                Text(
                  context.l10n.laboratory_view_testsTitle,
                  style: TextStyleManager.h4,
                ),
                const SizedBox(height: 8),
                ...order.tests!.map(
                  (t) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text('• ${t.testName ?? ''} — ${t.status ?? ''}'),
                  ),
                ),
              ],
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.laboratory_view_close),
          ),
        ],
      ),
    );
  }

  void _showCancelConfirmation(
    BuildContext context,
    LabOrder order,
    LaboratoryController controller,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.laboratory_view_cancelTitle),
        content: Text(
          context.l10n.laboratory_view_cancelMsg(order.orderNumber ?? ''),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.laboratory_view_no),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (order.id != null) {
                await controller.deleteLabOrder(order.id!);
              }
            },
            child: Text(context.l10n.laboratory_view_yesCancel),
          ),
        ],
      ),
    );
  }

  Widget _detailRow(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 160,
            child: Text(label, style: TextStyleManager.label),
          ),
          Expanded(
            child: Text(value ?? 'N/A', style: TextStyleManager.bodyMedium),
          ),
        ],
      ),
    );
  }
}
