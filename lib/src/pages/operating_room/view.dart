import '../../../common.dart';

class OperatingRoomPage extends StatelessWidget {
  const OperatingRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Operating Room',
      description:
          'Surgery scheduling, WHO safety checklist, surgical records.',
      mainButtonTitle: 'Book surgery',
      mainButtonOnTap: () {},
      numberCards: [
        NumberCard(
          title: 'Scheduled Surgeries',
          value: '20',
          icon: Icons.schedule,
        ),
        NumberCard(title: 'ORS Total', value: '5', icon: Icons.autorenew),
        NumberCard(
          title: 'Today bookings',
          value: '15',
          icon: Icons.check_circle,
        ),
        NumberCard(title: 'In Progress', value: '2', icon: Icons.cancel),
        NumberCard(
          title: 'Upcoming',
          value: '3',
          icon: Icons.warning_amber_outlined,
        ),
      ],
      hasSearch: false,
      tableHeader: 'All bookings',
      table: DataTable(
        columns: [
          DataColumn(label: Text('Booking #')),
          DataColumn(label: Text('Date/Time')),
          DataColumn(label: Text('Patient')),
          DataColumn(label: Text('Procedure')),
          DataColumn(label: Text('OR Room')),
          DataColumn(label: Text('Priority')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Actions')),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('12345')),
              DataCell(Text('12:34 PM, 2024-06-01')),
              DataCell(Text('John Doe')),
              DataCell(Text('Appendectomy')),
              DataCell(Text('OR-1')),
              DataCell(Text('High')),
              DataCell(Text('Scheduled')),
              DataCell(
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text('View')),
                    TextButton(onPressed: () {}, child: Text('Reschedule')),
                    TextButton(onPressed: () {}, child: Text('Cancel')),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
