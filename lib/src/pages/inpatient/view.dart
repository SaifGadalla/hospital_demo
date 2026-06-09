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
      title: 'Inpatient (IPD)',
      description: 'Wards, beds, admissions, transfers, and discharges.',
      mainButtonTitle: 'Admit',
      mainButtonOnTap: () async {
        await AddAdmissionDialog.show(context);
        controller.loadAdmissions();
      },
      numberCards: [
        NumberCard(
          title: 'Active admissions',
          value: state.admissions.where((a) => a.status?.toLowerCase() == 'admitted').length.toString(),
          icon: Icons.bed,
        ),
        NumberCard(
          title: 'Beds occupied',
          value: state.admissions.where((a) => a.status?.toLowerCase() == 'admitted').length.toString(),
          icon: Icons.hotel,
        ),
        NumberCard(
          title: 'Beds available',
          value: '3', // static or derived if we had bedsService
          icon: Icons.local_hotel,
        ),
        NumberCard(
          title: 'Occupancy rate',
          value: '80%',
          icon: Icons.percent,
        ),
      ],
      tableHeader: 'Active Admissions',
      customBody: Container(
        decoration: BoxDecoration(
          color: ColorManager.surface,
          border: Border.all(color: ColorManager.border),
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
                    'Ward bed map',
                    style: TextStyleManager.h4,
                  ),
                  Spacer(),
                  Text('Available'),
                  Text('Occupied'),
                  Text('Cleaning'),
                  Text('Blocked'),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      AppToast.show('Ward filter coming soon');
                    },
                    child: const Text('Filter by Ward'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      AppToast.show('Date filter coming soon');
                    },
                    child: const Text('Filter by Date'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      table: state.isLoading
          ? const Center(child: Padding(padding: EdgeInsets.all(24.0), child: CircularProgressIndicator()))
          : DataTable(
              headingRowColor: WidgetStateProperty.all(ColorManager.surfaceElevated),
              columns: const [
                DataColumn(label: Text('Admission #')),
                DataColumn(label: Text('Patient')),
                DataColumn(label: Text('Bed')),
                DataColumn(label: Text('Diagnosis')),
                DataColumn(label: Text('Date Admitted')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Actions')),
              ],
              rows: state.admissions.map((adm) {
                return DataRow(
                  cells: [
                    DataCell(Text(adm.admissionNumber ?? '')),
                    DataCell(Text(adm.patientName ?? '')),
                    DataCell(Text(adm.bedNumber ?? '')),
                    DataCell(Text(adm.admissionDiagnosis ?? '')),
                    DataCell(Text(adm.admissionDate != null
                        ? DateFormat('yyyy-MM-dd').format(adm.admissionDate!)
                        : '')),
                    DataCell(Text(adm.status ?? '')),
                    DataCell(
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.transfer_within_a_station),
                            tooltip: 'Transfer',
                            onPressed: () {
                              _showTransferDialog(context, adm, controller);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.local_hospital),
                            tooltip: 'Discharge',
                            onPressed: () {
                              _showDischargeConfirmation(context, adm, controller);
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
        title: const Text('Confirm Discharge'),
        content: Text(
          'Are you sure you want to discharge ${adm.patientName ?? 'this patient'}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (adm.id != null) {
                await controller.dischargeAdmission(adm.id!);
              }
            },
            child: const Text('Discharge'),
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
        title: const Text('Transfer Patient'),
        content: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Transfer ${adm.patientName ?? 'patient'} to a new bed.'),
              const SizedBox(height: 16),
              TextField(
                controller: reasonController,
                decoration: const InputDecoration(
                  labelText: 'Reason for transfer',
                  border: OutlineInputBorder(),
                ),
                maxLines: 2,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
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
            child: const Text('Transfer'),
          ),
        ],
      ),
    );
  }
}
