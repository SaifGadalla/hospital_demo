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
      title: context.l10n.emergency_view_title,
      description: context.l10n.emergency_view_description,
      mainButtonTitle: context.l10n.emergency_view_registerArrival,
      secondarybuttons: [
        TextButton(
          onPressed: () {
            AppToast.show(context.l10n.emergency_view_ambulanceToast);
          },
          child: Text(context.l10n.emergency_view_ambulanceCall),
        ),
      ],
      mainButtonOnTap: () async {
        await AddErRegistrationDialog.show(context);
        controller.loadAmbulanceCalls();
      },
      numberCards: [
        NumberCard(
          title: context.l10n.emergency_view_activeCalls,
          value: state.ambulanceCalls.length.toString(),
          icon: Icons.local_hospital,
        ),
        NumberCard(
          title: context.l10n.emergency_view_todayTotal,
          value: '10',
          icon: Icons.today,
        ),
        NumberCard(
          title: context.l10n.emergency_view_notTriaged,
          value: '30',
          icon: Icons.warning,
        ),
        NumberCard(
          title: context.l10n.emergency_view_level1Resus,
          value: '10',
          icon: Icons.warning_amber_outlined,
        ),
      ],
      hasSearch: false,
      tableHeader: context.l10n.emergency_view_recentAmbulanceCalls,
      table: state.isLoading
          ? const Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: CircularProgressIndicator(),
              ),
            )
          : DataTable(
              columns: [
                DataColumn(
                  label: Text(context.l10n.emergency_view_columnCallNum),
                ),
                DataColumn(label: Text(context.l10n.emergency_view_columnTime)),
                DataColumn(
                  label: Text(context.l10n.emergency_view_columnPatient),
                ),
                DataColumn(
                  label: Text(context.l10n.emergency_view_columnPickup),
                ),
                DataColumn(
                  label: Text(context.l10n.emergency_view_columnIncident),
                ),
                DataColumn(
                  label: Text(context.l10n.emergency_view_columnStatus),
                ),
                DataColumn(
                  label: Text(context.l10n.emergency_view_columnActions),
                ),
              ],
              rows: state.ambulanceCalls.asMap().entries.map((entry) {
                final index = entry.key;
                final call = entry.value;
                return DataRow(
                  cells: [
                    DataCell(Text('AC-${10000 + index}')),
                    DataCell(
                      Text(
                        call.callTime != null
                            ? DateFormat('h:mm a').format(call.callTime!)
                            : '',
                      ),
                    ),
                    DataCell(Text(call.patientName ?? '')),
                    DataCell(Text(call.pickupLocation ?? '')),
                    DataCell(Text(call.incidentType ?? '')),
                    DataCell(
                      Text(
                        call.notes ?? context.l10n.emergency_view_statusEnRoute,
                      ),
                    ),
                    DataCell(
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              _showCallDetails(context, call, index);
                            },
                            child: Text(context.l10n.emergency_view_viewAction),
                          ),
                          TextButton(
                            onPressed: () {
                              _showUpdateStatusDialog(
                                context,
                                call,
                                controller,
                              );
                            },
                            child: Text(
                              context.l10n.emergency_view_updateStatusAction,
                            ),
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
        title: Text(context.l10n.emergency_view_callTitle(10000 + index)),
        content: SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow(
                context.l10n.emergency_view_columnPatient,
                call.patientName,
              ),
              _detailRow(
                context.l10n.emergency_view_callTime,
                call.callTime != null
                    ? DateFormat('h:mm a, MMM dd').format(call.callTime!)
                    : null,
              ),
              _detailRow(
                context.l10n.emergency_view_columnPickup,
                call.pickupLocation,
              ),
              _detailRow(
                context.l10n.emergency_view_incidentType,
                call.incidentType,
              ),
              _detailRow(context.l10n.emergency_view_notes, call.notes),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.emergency_view_close),
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
        title: Text(context.l10n.emergency_view_updateStatusTitle),
        content: SizedBox(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.emergency_view_patientNameDisplay(
                  call.patientName ?? 'Unknown',
                ),
              ),
              const SizedBox(height: 16),
              ...[
                context.l10n.emergency_view_statusDispatched,
                context.l10n.emergency_view_statusEnRoute,
                context.l10n.emergency_view_statusOnScene,
                context.l10n.emergency_view_statusTransporting,
                context.l10n.emergency_view_statusArrived,
                context.l10n.emergency_view_statusCompleted,
              ].map(
                (status) => ListTile(
                  title: Text(status),
                  onTap: () {
                    Navigator.pop(context);
                    AppToast.show(
                      context.l10n.emergency_view_statusUpdatedToast(status),
                    );
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
            child: Text(context.l10n.emergency_view_cancel),
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
