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
      title: 'Laboratory',
      description: 'Test orders, sample collection, results, and approval.',
      mainButtonTitle: 'New Order',
      mainButtonOnTap: () async {
        await AddLabOrderDialog.show(context);
        controller.loadLabOrders();
      },
      numberCards: [
        NumberCard(
          title: 'Total Orders',
          value: state.labOrders.length.toString(),
          icon: Icons.science,
        ),
        NumberCard(
          title: 'Pending',
          value: state.labOrders
              .where((o) => o.status?.toLowerCase() == 'pending')
              .length
              .toString(),
          icon: Icons.pending,
        ),
        NumberCard(
          title: 'In Progress',
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
          title: 'STAT priority',
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
                items: const [
                  DropdownMenuItem(value: null, child: Text('All statuses')),
                  DropdownMenuItem(value: 'pending', child: Text('Pending')),
                  DropdownMenuItem(
                    value: 'sample_collected',
                    child: Text('Sample collected'),
                  ),
                  DropdownMenuItem(value: 'in_progress', child: Text('In progress')),
                  DropdownMenuItem(value: 'completed', child: Text('Completed')),
                  DropdownMenuItem(value: 'approved', child: Text('Approved')),
                  DropdownMenuItem(value: 'cancelled', child: Text('Cancelled')),
                ],
                onChanged: (_) => controller.getLabOrders(),
                hint: 'Filter by Status',
              ),
              AppDropDownButton(
                formControlName: 'priority',
                items: const [
                  DropdownMenuItem(value: null, child: Text('All priorities')),
                  DropdownMenuItem(value: 'routine', child: Text('Routine')),
                  DropdownMenuItem(value: 'urgent', child: Text('Urgent')),
                  DropdownMenuItem(value: 'stat', child: Text('STAT')),
                ],
                onChanged: (_) => controller.getLabOrders(),
                hint: 'Filter by Priority',
              ),
              TextButton(
                onPressed: () {
                  controller.formGroup.reset();
                  searchFormGroup.reset();
                  controller.getLabOrders();
                },
                child: const Text('Clear'),
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
              headingRowColor: WidgetStateProperty.all(ColorManager.surfaceElevated),
              columns: const [
                DataColumn(label: Text('Order #')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Patient')),
                DataColumn(label: Text('Tests')),
                DataColumn(label: Text('Priority')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Actions')),
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
                            tooltip: 'View details',
                            onPressed: () {
                              _showLabOrderDetails(context, order);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.cancel),
                            tooltip: 'Cancel order',
                            onPressed: () {
                              _showCancelConfirmation(context, order, controller);
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
        title: Text('Lab Order ${order.orderNumber ?? ''}'),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow('Order #', order.orderNumber),
              _detailRow('Patient ID', order.patientId),
              _detailRow('Doctor ID', order.doctorId),
              _detailRow('Priority', order.priority),
              _detailRow('Status', order.status),
              _detailRow('Clinical Indication', order.clinicalIndication),
              _detailRow('Specimen Type', order.specimenType),
              _detailRow(
                'Order Date',
                order.orderDate != null
                    ? DateFormat('yyyy-MM-dd HH:mm').format(order.orderDate!)
                    : null,
              ),
              if (order.tests != null && order.tests!.isNotEmpty) ...[
                const Divider(),
                Text('Tests', style: TextStyleManager.h4),
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
            child: const Text('Close'),
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
        title: const Text('Cancel Lab Order'),
        content: Text(
          'Are you sure you want to cancel order ${order.orderNumber ?? ''}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (order.id != null) {
                await controller.deleteLabOrder(order.id!);
              }
            },
            child: const Text('Yes, Cancel'),
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
