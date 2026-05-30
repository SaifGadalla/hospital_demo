import '../../../common.dart';

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Emergency',
      description:
          'Live triage board with ESI levels, treatment, and disposition.',
      mainButtonTitle: 'Register arrival',
      secondarybuttons: [
        TextButton(onPressed: () {}, child: Text('Ambulance call')),
      ],
      mainButtonOnTap: () {},
      numberCards: [
        NumberCard(
          title: 'Active patients',
          value: '50',
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
      table: DataTable(
        columns: [
          DataColumn(label: Text('Call #')),
          DataColumn(label: Text('Time')),
          DataColumn(label: Text('Patient')),
          DataColumn(label: Text('Pickup Location')),
          DataColumn(label: Text('Incident')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Actions')),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('12345')),
              DataCell(Text('12:34 PM')),
              DataCell(Text('John Doe')),
              DataCell(Text('123 Main St')),
              DataCell(Text('Car accident')),
              DataCell(Text('En route')),
              DataCell(
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text('View')),
                    TextButton(onPressed: () {}, child: Text('Update Status')),
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
