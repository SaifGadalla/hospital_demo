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
      title: 'Pharmacy',
      description: 'Prescriptions, dispensing, and medication tracking.',
      mainButtonTitle: 'New Prescription',
      mainButtonOnTap: () async {
        await AddPrescriptionDialog.show(context);
        controller.loadPrescriptions();
      },
      numberCards: [
        NumberCard(
          title: 'Total Rx',
          value: state.prescriptions.length.toString(),
          icon: Icons.medication,
        ),
        NumberCard(
          title: 'Pending',
          value: state.prescriptions
              .where((p) => p.status?.toLowerCase() == 'pending')
              .length
              .toString(),
          icon: Icons.pending,
        ),
        NumberCard(
          title: 'Dispensed',
          value: state.prescriptions
              .where((p) => p.status?.toLowerCase() == 'dispensed')
              .length
              .toString(),
          icon: Icons.check_circle,
        ),
        NumberCard(
          title: 'Line items',
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
            items: const [
              DropdownMenuItem(value: null, child: Text('All Statuses')),
              DropdownMenuItem(value: 'Cancelled', child: Text('Cancelled')),
              DropdownMenuItem(value: 'Dispensed', child: Text('Dispensed')),
              DropdownMenuItem(value: 'Pending', child: Text('Pending')),
            ],
            onChanged: (_) async {
              await controller.getPrescriptions();
            },
            hint: 'Filter by status',
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
              columns: const [
                DataColumn(label: Text('Rx #')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Patient')),
                DataColumn(label: Text('Diagnosis')),
                DataColumn(label: Text('Items')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Actions')),
              ],
              rows: state.prescriptions.map((prescription) {
                final itemsSummary =
                    prescription.items
                        ?.map(
                          (e) => '${e.medicationName ?? ''} ${e.dosage ?? ''}',
                        )
                        .join(', ') ??
                    'No items';
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
                              tooltip: 'Dispense',
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
                            tooltip: 'Cancel',
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
        title: const Text('Cancel Prescription'),
        content: Text(
          'Are you sure you want to cancel prescription ${prescription.prescriptionNumber ?? ''}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (prescription.id != null) {
                await controller.cancelPrescription(prescription.id!);
              }
            },
            child: const Text('Yes, Cancel'),
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
        title: const Text('Dispense Prescription'),
        content: Text(
          'Mark prescription ${prescription.prescriptionNumber ?? ''} as dispensed?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (prescription.id != null) {
                await controller.dispensePrescription(prescription.id!);
              }
            },
            child: const Text('Dispense'),
          ),
        ],
      ),
    );
  }
}
