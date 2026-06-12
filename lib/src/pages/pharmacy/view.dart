import 'package:intl/intl.dart';

import '../../../common.dart';
import 'add_prescription_dialog/dialog.dart';
import 'controller.dart';

class PharmacyPage extends ConsumerStatefulWidget {
  const PharmacyPage({super.key});

  @override
  ConsumerState<PharmacyPage> createState() => _PharmacyPageState();
}

class _PharmacyPageState extends ConsumerState<PharmacyPage> with SearchMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(pharmacyControllerProvider.notifier).loadPrescriptions();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pharmacyControllerProvider);
    final controller = ref.read(pharmacyControllerProvider.notifier);
    return AppPage(
      searchFormGroup: searchFormGroup,
      onSearchFieldChanged: (control) async {
        await controller.getPrescriptions(searchTerm: control.value);
      },
      title: context.l10n.pharmacy_view_title,
      description: context.l10n.pharmacy_view_description,
      mainButtonTitle: context.l10n.pharmacy_view_newPrescription,
      mainButtonOnTap: () async {
        await AddPrescriptionDialog.show(context);
        controller.loadPrescriptions();
      },
      numberCards: [
        NumberCard(
          title: context.l10n.pharmacy_view_totalRx,
          value: state.prescriptions.length.toString(),
          icon: Icons.medication,
        ),
        NumberCard(
          title: context.l10n.pharmacy_view_pending,
          value: state.prescriptions
              .where((p) => p.status?.toLowerCase() == 'pending')
              .length
              .toString(),
          icon: Icons.pending,
        ),
        NumberCard(
          title: context.l10n.pharmacy_view_dispensed,
          value: state.prescriptions
              .where((p) => p.status?.toLowerCase() == 'dispensed')
              .length
              .toString(),
          icon: Icons.check_circle,
        ),
        NumberCard(
          title: context.l10n.pharmacy_view_lineItems,
          value: state.prescriptions
              .fold<int>(0, (sum, p) => sum + (p.items?.length ?? 0))
              .toString(),
          icon: Icons.list,
        ),
      ],
      hasSearch: true,
      secondarySearchHeaderWidgets: [
        ReactiveForm(
          formGroup: controller.formGroup,
          child: AppDropDownButton(
            formControlName: 'status',
            items: [
              DropdownMenuItem(value: null, child: Text(context.l10n.pharmacy_view_allStatuses)),
              DropdownMenuItem(value: 'Cancelled', child: Text(context.l10n.pharmacy_view_cancelled)),
              DropdownMenuItem(value: 'Dispensed', child: Text(context.l10n.pharmacy_view_dispensed)),
              DropdownMenuItem(value: 'Pending', child: Text(context.l10n.pharmacy_view_pending)),
            ],
            onChanged: (_) async {
              await controller.getPrescriptions();
            },
            hint: context.l10n.pharmacy_view_filterByStatus,
            value: null,
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
              columns: [
                DataColumn(label: Text(context.l10n.pharmacy_view_columnRx)),
                DataColumn(label: Text(context.l10n.pharmacy_view_columnDate)),
                DataColumn(label: Text(context.l10n.pharmacy_view_columnPatient)),
                DataColumn(label: Text(context.l10n.pharmacy_view_columnDiagnosis)),
                DataColumn(label: Text(context.l10n.pharmacy_view_columnItems)),
                DataColumn(label: Text(context.l10n.pharmacy_view_columnStatus)),
                DataColumn(label: Text(context.l10n.pharmacy_view_columnActions)),
              ],
              rows: state.prescriptions.map((prescription) {
                final itemsSummary =
                    prescription.items
                        ?.map(
                          (e) => '${e.medicationName ?? ''} ${e.dosage ?? ''}',
                        )
                        .join(', ') ??
                    context.l10n.pharmacy_view_noItems;
                return DataRow(
                  cells: [
                    DataCell(Text(prescription.prescriptionNumber ?? '')),
                    DataCell(
                      Text(
                        prescription.prescriptionDate != null
                            ? DateFormat(
                                'yyyy-MM-dd',
                              ).format(prescription.prescriptionDate!)
                            : '',
                      ),
                    ),
                    DataCell(
                      Text(controller.getPatientName(prescription.patientId)),
                    ),
                    DataCell(Text(prescription.diagnosis ?? '')),
                    DataCell(Text(itemsSummary)),
                    DataCell(Text(prescription.status ?? '')),
                    DataCell(
                      Row(
                        children: [
                          if (prescription.status?.toLowerCase() == 'pending')
                            IconButton(
                              icon: const Icon(Icons.check_circle_outline),
                              tooltip: context.l10n.pharmacy_view_dispenseAction,
                              onPressed: () {
                                _showDispenseConfirmation(
                                  context,
                                  prescription,
                                  controller,
                                );
                              },
                            ),
                          IconButton(
                            icon: const Icon(Icons.cancel),
                            tooltip: context.l10n.pharmacy_view_cancelAction,
                            onPressed: prescription.status?.toLowerCase() == 'cancelled'
                                ? null
                                : () {
                                    _showCancelConfirmation(
                                      context,
                                      prescription,
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

  void _showCancelConfirmation(
    BuildContext context,
    Prescription prescription,
    PharmacyController controller,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.pharmacy_view_cancelTitle),
        content: Text(
          context.l10n.pharmacy_view_cancelMsg(prescription.prescriptionNumber ?? ''),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.pharmacy_view_no),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (prescription.id != null) {
                await controller.cancelPrescription(prescription.id!);
              }
            },
            child: Text(context.l10n.pharmacy_view_yesCancel),
          ),
        ],
      ),
    );
  }

  void _showDispenseConfirmation(
    BuildContext context,
    Prescription prescription,
    PharmacyController controller,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.pharmacy_view_dispenseTitle),
        content: Text(
          context.l10n.pharmacy_view_dispenseMsg(prescription.prescriptionNumber ?? ''),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.pharmacy_view_cancelAction),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (prescription.id != null) {
                await controller.dispensePrescription(prescription.id!);
              }
            },
            child: Text(context.l10n.pharmacy_view_dispenseAction),
          ),
        ],
      ),
    );
  }
}
