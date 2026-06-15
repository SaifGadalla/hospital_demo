import 'package:intl/intl.dart';

import '../../../common.dart';
import 'add_surgery_booking_dialog/dialog.dart';
import 'controller.dart';

class OperatingRoomPage extends ConsumerStatefulWidget {
  const OperatingRoomPage({super.key});

  @override
  ConsumerState<OperatingRoomPage> createState() => _OperatingRoomPageState();
}

class _OperatingRoomPageState extends ConsumerState<OperatingRoomPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(operatingRoomControllerProvider.notifier).loadSurgeryBookings();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(operatingRoomControllerProvider);
    final controller = ref.read(operatingRoomControllerProvider.notifier);

    return AppPage(
      title: context.l10n.operating_room_view_title,
      description: context.l10n.operating_room_view_description,
      mainButtonTitle: context.l10n.operating_room_view_bookSurgery,
      mainButtonOnTap: () async {
        await AddSurgeryBookingDialog.show(context);
        controller.loadSurgeryBookings();
      },
      numberCards: [
        NumberCard(
          title: context.l10n.operating_room_view_totalBookings,
          value: state.surgeryBookings.length.toString(),
          icon: Icons.event,
        ),
        NumberCard(
          title: context.l10n.operating_room_view_scheduled,
          value: state.surgeryBookings
              .where((s) => s.status?.toLowerCase() == 'scheduled')
              .length
              .toString(),
          icon: Icons.schedule,
        ),
        NumberCard(
          title: context.l10n.operating_room_view_inProgress,
          value: state.surgeryBookings
              .where(
                (s) =>
                    s.status?.toLowerCase() == 'inprogress' ||
                    s.status?.toLowerCase() == 'in_progress',
              )
              .length
              .toString(),
          icon: Icons.autorenew,
        ),
        NumberCard(
          title: context.l10n.operating_room_view_completed,
          value: state.surgeryBookings
              .where((s) => s.status?.toLowerCase() == 'completed')
              .length
              .toString(),
          icon: Icons.check_circle,
        ),
      ],
      hasSearch: false,
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
                  label: Text(context.l10n.operating_room_view_columnDate),
                ),
                DataColumn(
                  label: Text(context.l10n.operating_room_view_columnTime),
                ),
                DataColumn(
                  label: Text(context.l10n.operating_room_view_columnPatient),
                ),
                DataColumn(
                  label: Text(context.l10n.operating_room_view_columnProcedure),
                ),
                DataColumn(
                  label: Text(context.l10n.operating_room_view_columnRoom),
                ),
                DataColumn(
                  label: Text(context.l10n.operating_room_view_columnPriority),
                ),
                DataColumn(
                  label: Text(context.l10n.operating_room_view_columnStatus),
                ),
                DataColumn(
                  label: Text(context.l10n.operating_room_view_columnActions),
                ),
              ],
              rows: state.surgeryBookings.map((booking) {
                return DataRow(
                  cells: [
                    DataCell(
                      Text(
                        booking.scheduledDate != null
                            ? DateFormat(
                                'yyyy-MM-dd',
                              ).format(booking.scheduledDate!)
                            : '',
                      ),
                    ),
                    DataCell(
                      Text(
                        booking.scheduledStartTime != null
                            ? DateFormat(
                                'h:mm a',
                              ).format(booking.scheduledStartTime!)
                            : '',
                      ),
                    ),
                    DataCell(Text(booking.patientName ?? '')),
                    DataCell(Text(booking.procedureName ?? '')),
                    DataCell(Text(booking.operatingRoomNumber ?? '')),
                    DataCell(Text(booking.priority ?? '')),
                    DataCell(Text(booking.status ?? '')),
                    DataCell(
                      Row(
                        children: [
                          IconButton(
                            tooltip:
                                context.l10n.operating_room_view_viewAction,
                            icon: const Icon(Icons.visibility),
                            color: context.colors.primary,
                            onPressed: () {
                              _showBookingDetails(context, booking);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.cancel),
                            tooltip:
                                context.l10n.laboratory_view_cancelOrderTooltip,
                            onPressed: () {
                              _showCancelDialog(context, booking, controller);
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

  void _showBookingDetails(BuildContext context, SurgeryBooking booking) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        scrollable: true,
        title: Text(
          context.l10n.operating_room_view_bookingTitle(
            booking.procedureName ?? '',
          ),
        ),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              AppDetailRow(
                context.l10n.operating_room_view_columnPatient,
                booking.patientName,
              ),
              AppDetailRow(
                context.l10n.operating_room_view_columnProcedure,
                booking.procedureName,
              ),
              AppDetailRow(
                context.l10n.operating_room_view_columnDate,
                booking.scheduledDate != null
                    ? DateFormat('MMM dd, yyyy').format(booking.scheduledDate!)
                    : null,
              ),
              AppDetailRow(
                context.l10n.operating_room_view_columnTime,
                booking.scheduledDate != null
                    ? DateFormat('h:mm a').format(booking.scheduledDate!)
                    : null,
              ),
              AppDetailRow(
                context.l10n.operating_room_view_duration,
                context.l10n.operating_room_view_durationMin(
                  booking.estimatedDuration ?? 0,
                ),
              ),
              AppDetailRow(
                context.l10n.operating_room_view_anesthesia,
                booking.anesthesiaType,
              ),
              AppDetailRow(
                context.l10n.operating_room_view_columnRoom,
                booking.operatingRoomNumber,
              ),
              AppDetailRow(
                context.l10n.operating_room_view_columnStatus,
                booking.status,
              ),
              AppDetailRow(
                context.l10n.operating_room_view_notes,
                booking.notes,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.operating_room_view_close),
          ),
        ],
      ),
    );
  }

  void _showCancelDialog(
    BuildContext context,
    SurgeryBooking booking,
    OperatingRoomController controller,
  ) {
    final reasonController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.operating_room_view_cancelTitle),
        content: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.operating_room_view_cancelMsg(
                  booking.patientName ?? 'patient',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: reasonController,
                decoration: InputDecoration(
                  labelText: context.l10n.operating_room_view_reasonForCancel,
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
            child: Text(context.l10n.operating_room_view_no),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (booking.id != null) {
                await controller.cancelSurgery(
                  booking.id!,
                  reason: reasonController.text,
                );
              }
            },
            child: Text(context.l10n.operating_room_view_yesCancel),
          ),
        ],
      ),
    );
  }
}
