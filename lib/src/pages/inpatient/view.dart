import 'package:intl/intl.dart';

import '../../../common.dart';
import 'add_admission_dialog/dialog.dart';
import 'controller.dart';

class InpatientPage extends ConsumerStatefulWidget {
  const InpatientPage({super.key});

  @override
  ConsumerState<InpatientPage> createState() => _InpatientPageState();
}

class _InpatientPageState extends ConsumerState<InpatientPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(inpatientControllerProvider.notifier).loadAdmissions();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(inpatientControllerProvider);
    final controller = ref.read(inpatientControllerProvider.notifier);

    return AppPage(
      title: context.l10n.inpatient_view_title,
      description: context.l10n.inpatient_view_description,
      mainButtonTitle: context.l10n.inpatient_view_admit,
      mainButtonOnTap: () async {
        await AddAdmissionDialog.show(context);
        controller.loadAdmissions();
      },
      numberCards: [
        NumberCard(
          title: context.l10n.inpatient_view_activeAdmissions,
          value: state.admissions
              .where((a) => a.status?.toLowerCase() == 'admitted')
              .length
              .toString(),
          icon: Icons.bed,
        ),
        NumberCard(
          title: context.l10n.inpatient_view_bedsOccupied,
          value: state.admissions
              .where((a) => a.status?.toLowerCase() == 'admitted')
              .length
              .toString(),
          icon: Icons.hotel,
        ),
        NumberCard(
          title: context.l10n.inpatient_view_bedsAvailable,
          value:
              (30 -
                      state.admissions
                          .where((a) => a.status?.toLowerCase() == 'admitted')
                          .length)
                  .toString(),
          icon: Icons.local_hotel,
        ),
        NumberCard(
          title: context.l10n.inpatient_view_occupancyRate,
          value:
              '${((state.admissions.where((a) => a.status?.toLowerCase() == 'admitted').length / 30) * 100).toStringAsFixed(0)}%',
          icon: Icons.percent,
        ),
      ],
      tableHeader: context.l10n.inpatient_view_activeAdmissions,
      customBody: Container(
        decoration: BoxDecoration(
          color: context.colors.surface,
          border: Border.all(color: context.colors.border),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                spacing: 8,
                children: [
                  Text(
                    context.l10n.inpatient_view_wardBedMap,
                    style: TextStyleManager.h4,
                  ),
                  Spacer(),
                  Text(context.l10n.inpatient_view_available),
                  Text(context.l10n.inpatient_view_occupied),
                  Text(context.l10n.inpatient_view_cleaning),
                  Text(context.l10n.inpatient_view_blocked),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      AppToast.show(
                        context.l10n.inpatient_view_wardFilterToast,
                      );
                    },
                    child: Text(context.l10n.inpatient_view_filterByWard),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      AppToast.show(
                        context.l10n.inpatient_view_dateFilterToast,
                      );
                    },
                    child: Text(context.l10n.inpatient_view_filterByDate),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
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
                  label: Text(context.l10n.inpatient_view_columnAdmission),
                ),
                DataColumn(
                  label: Text(context.l10n.inpatient_view_columnPatient),
                ),
                DataColumn(label: Text(context.l10n.inpatient_view_columnBed)),
                DataColumn(
                  label: Text(context.l10n.inpatient_view_columnDiagnosis),
                ),
                DataColumn(
                  label: Text(context.l10n.inpatient_view_columnDateAdmitted),
                ),
                DataColumn(
                  label: Text(context.l10n.inpatient_view_columnStatus),
                ),
                DataColumn(
                  label: Text(context.l10n.inpatient_view_columnActions),
                ),
              ],
              rows: state.admissions.map((adm) {
                return DataRow(
                  cells: [
                    DataCell(Text(adm.admissionNumber ?? '')),
                    DataCell(Text(adm.patientName ?? '')),
                    DataCell(Text(adm.bedNumber ?? '')),
                    DataCell(Text(adm.admissionDiagnosis ?? '')),
                    DataCell(
                      Text(
                        adm.admissionDate != null
                            ? DateFormat(
                                'yyyy-MM-dd',
                              ).format(adm.admissionDate!)
                            : '',
                      ),
                    ),
                    DataCell(Text(adm.status ?? '')),
                    DataCell(
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.transfer_within_a_station),
                            tooltip: context.l10n.inpatient_view_transferAction,
                            onPressed: () {
                              _showTransferDialog(context, adm, controller);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.local_hospital),
                            tooltip:
                                context.l10n.inpatient_view_dischargeAction,
                            onPressed: () {
                              _showDischargeConfirmation(
                                context,
                                adm,
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

  void _showDischargeConfirmation(
    BuildContext context,
    Admission adm,
    InpatientController controller,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.inpatient_view_confirmDischargeTitle),
        content: Text(
          context.l10n.inpatient_view_confirmDischargeMsg(
            adm.patientName ?? 'this patient',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.inpatient_view_cancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (adm.id != null) {
                await controller.dischargeAdmission(adm.id!);
              }
            },
            child: Text(context.l10n.inpatient_view_dischargeAction),
          ),
        ],
      ),
    );
  }

  void _showTransferDialog(
    BuildContext context,
    Admission adm,
    InpatientController controller,
  ) {
    final reasonController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.inpatient_view_transferTitle),
        content: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.inpatient_view_transferMsg(
                  adm.patientName ?? 'patient',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: reasonController,
                decoration: InputDecoration(
                  labelText: context.l10n.inpatient_view_reasonForTransfer,
                  border: const OutlineInputBorder(),
                ),
                maxLines: 2,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.inpatient_view_cancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (adm.id != null) {
                await controller.transferAdmission(
                  adm.id!,
                  reason: reasonController.text,
                );
              }
            },
            child: Text(context.l10n.inpatient_view_transferAction),
          ),
        ],
      ),
    );
  }
}
