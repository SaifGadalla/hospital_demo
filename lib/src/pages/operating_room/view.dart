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
      title: 'Operating Room',
      description: 'Surgery schedule, teams, safety checklists.',
      mainButtonTitle: 'Book Surgery',
      mainButtonOnTap: () async {
        await AddSurgeryBookingDialog.show(context);
        controller.loadSurgeryBookings();
      },
      numberCards: [
        NumberCard(
          title: 'Total Bookings',
          value: state.surgeryBookings.length.toString(),
          icon: Icons.event,
        ),
        NumberCard(
          title: 'Scheduled',
          value: state.surgeryBookings
              .where((s) => s.status?.toLowerCase() == 'scheduled')
              .length
              .toString(),
          icon: Icons.schedule,
        ),
        NumberCard(
          title: 'In Progress',
          value: state.surgeryBookings
              .where((s) =>
                  s.status?.toLowerCase() == 'inprogress' ||
                  s.status?.toLowerCase() == 'in_progress')
              .length
              .toString(),
          icon: Icons.autorenew,
        ),
        NumberCard(
          title: 'Completed',
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
              headingRowColor: WidgetStateProperty.all(ColorManager.surfaceElevated),
              columns: const [
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Time')),
                DataColumn(label: Text('Patient')),
                DataColumn(label: Text('Procedure')),
                DataColumn(label: Text('Room')),
                DataColumn(label: Text('Priority')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Actions')),
              ],
              rows: state.surgeryBookings.map((booking) {
                return DataRow(
                  cells: [
                    DataCell(
                      Text(
                        booking.scheduledDate != null
                            ? DateFormat('yyyy-MM-dd').format(booking.scheduledDate!)
                            : '',
                      ),
                    ),
                    DataCell(
                      Text(
                        booking.scheduledStartTime != null
                            ? DateFormat('h:mm a').format(booking.scheduledStartTime!)
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
                          TextButton(
                            onPressed: () {
                              _showBookingDetails(context, booking);
                            },
                            child: const Text('View'),
                          ),
                          TextButton(
                            onPressed: () {
                              _showCancelDialog(context, booking, controller);
                            },
                            child: const Text('Cancel'),
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
        title: Text('Surgery Booking - ${booking.procedureName ?? ''}'),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow('Patient', booking.patientName),
              _detailRow('Procedure', booking.procedureName),
              _detailRow('Room', booking.operatingRoomNumber),
              _detailRow(
                'Date',
                booking.scheduledDate != null
                    ? DateFormat('yyyy-MM-dd').format(booking.scheduledDate!)
                    : null,
              ),
              _detailRow(
                'Time',
                booking.scheduledStartTime != null
                    ? DateFormat('h:mm a').format(booking.scheduledStartTime!)
                    : null,
              ),
              _detailRow(
                'Duration',
                '${booking.estimatedDuration ?? 0} minutes',
              ),
              _detailRow('Priority', booking.priority),
              _detailRow('Anesthesia', booking.anesthesiaType),
              _detailRow('Status', booking.status),
              _detailRow('Notes', booking.notes),
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

  void _showCancelDialog(
    BuildContext context,
    SurgeryBooking booking,
    OperatingRoomController controller,
  ) {
    final reasonController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cancel Surgery'),
        content: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Cancel surgery for ${booking.patientName ?? 'patient'}?',
              ),
              const SizedBox(height: 16),
              TextField(
                controller: reasonController,
                decoration: const InputDecoration(
                  labelText: 'Reason for cancellation',
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
            child: const Text('No'),
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
