import 'package:intl/intl.dart';
import '../../../common.dart';
import 'add_er_registration_dialog/dialog.dart';
import 'controller.dart';

class EmergencyPage extends ConsumerStatefulWidget {
  const EmergencyPage({super.key});

  @override
  ConsumerState<EmergencyPage> createState() => _EmergencyPageState();
}

class _EmergencyPageState extends ConsumerState<EmergencyPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(emergencyControllerProvider.notifier).loadAmbulanceCalls();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(emergencyControllerProvider);
    final controller = ref.read(emergencyControllerProvider.notifier);

    return AppPage(
      title: 'Emergency',
      description:
          'Live triage board with ESI levels, treatment, and disposition.',
      mainButtonTitle: 'Register arrival',
      secondarybuttons: [
        TextButton(
          onPressed: () {
            AppToast.show('Ambulance call logging coming soon');
          },
          child: const Text('Ambulance call'),
        ),
      ],
      mainButtonOnTap: () async {
        await AddErRegistrationDialog.show(context);
        controller.loadAmbulanceCalls();
      },
      numberCards: [
        NumberCard(
          title: 'Active calls',
          value: state.ambulanceCalls.length.toString(),
          icon: Icons.local_hospital,
        ),
        NumberCard(title: 'Today total', value: '10', icon: Icons.today),
        NumberCard(title: 'Not triaged', value: '30', icon: Icons.warning),
        NumberCard(
          title: 'Level-1 (RESUS)',
          value: '10',
          icon: Icons.warning_amber_outlined,
        ),
      ],
      hasSearch: false,
      tableHeader: 'Recent ambulance calls',
      table: state.isLoading
          ? const Center(child: Padding(padding: EdgeInsets.all(24.0), child: CircularProgressIndicator()))
          : DataTable(
              columns: const [
                DataColumn(label: Text('Call #')),
                DataColumn(label: Text('Time')),
                DataColumn(label: Text('Patient')),
                DataColumn(label: Text('Pickup Location')),
                DataColumn(label: Text('Incident')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Actions')),
              ],
              rows: state.ambulanceCalls.asMap().entries.map((entry) {
                final index = entry.key;
                final call = entry.value;
                return DataRow(
                  cells: [
                    DataCell(Text('AC-${10000 + index}')),
                    DataCell(Text(call.callTime != null
                        ? DateFormat('h:mm a').format(call.callTime!)
                        : '')),
                    DataCell(Text(call.patientName ?? '')),
                    DataCell(Text(call.pickupLocation ?? '')),
                    DataCell(Text(call.incidentType ?? '')),
                    DataCell(Text(call.notes ?? 'En route')),
                    DataCell(
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              _showCallDetails(context, call, index);
                            },
                            child: const Text('View'),
                          ),
                          TextButton(
                            onPressed: () {
                              _showUpdateStatusDialog(context, call, controller);
                            },
                            child: const Text('Update Status'),
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

  void _showCallDetails(BuildContext context, ErAmbulanceCall call, int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        scrollable: true,
        title: Text('Ambulance Call AC-${10000 + index}'),
        content: SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow('Patient', call.patientName),
              _detailRow(
                'Call Time',
                call.callTime != null
                    ? DateFormat('h:mm a, MMM dd').format(call.callTime!)
                    : null,
              ),
              _detailRow('Pickup Location', call.pickupLocation),
              _detailRow('Incident Type', call.incidentType),
              _detailRow('Notes', call.notes),
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

  void _showUpdateStatusDialog(
    BuildContext context,
    ErAmbulanceCall call,
    EmergencyController controller,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Update Ambulance Call Status'),
        content: SizedBox(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Patient: ${call.patientName ?? 'Unknown'}'),
              const SizedBox(height: 16),
              ...[
                'Dispatched',
                'En route',
                'On scene',
                'Transporting',
                'Arrived at hospital',
                'Completed',
              ].map(
                (status) => ListTile(
                  title: Text(status),
                  onTap: () {
                    Navigator.pop(context);
                    AppToast.show('Status updated to: $status');
                    controller.loadAmbulanceCalls();
                  },
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
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
            width: 140,
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
