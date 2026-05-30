import '../../../common.dart';

class LaboratoryPage extends StatelessWidget {
  const LaboratoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Laboratory',
      description: 'Test orders, sample collection, results, and approval.',
      mainButtonTitle: 'New Order',
      mainButtonOnTap: () {},
      numberCards: [
        NumberCard(title: 'Total Orders', value: '120', icon: Icons.science),
        NumberCard(title: 'Pending', value: '15', icon: Icons.pending),
        NumberCard(title: 'In Progress', value: '105', icon: Icons.autorenew),
        NumberCard(
          title: 'STAT awaiting',
          value: '105',
          icon: Icons.hourglass_top,
        ),
      ],
      hasSearch: true,
      secondarySearchHeaderWidgets: [
        DropdownButton<String>(
          items: [
            DropdownMenuItem(value: 'all', child: Text('All statuses')),
            DropdownMenuItem(value: 'pending', child: Text('Pending')),
            DropdownMenuItem(
              value: 'sample_collected',
              child: Text('Sample collected'),
            ),
            DropdownMenuItem(value: 'in_progress', child: Text('In progress')),
            DropdownMenuItem(value: 'completed', child: Text('Completed')),
            DropdownMenuItem(value: 'approved', child: Text('Approved')),
            DropdownMenuItem(value: 'cancelled', child: Text('Cancelled')),
          ],
          onChanged: (value) {},
          hint: Text('Filter by Status'),
        ),
        DropdownButton<String>(
          items: [
            DropdownMenuItem(value: 'all', child: Text('All priorities')),
            DropdownMenuItem(value: 'routine', child: Text('Routine')),
            DropdownMenuItem(value: 'urgent', child: Text('Urgent')),
            DropdownMenuItem(value: 'stat', child: Text('STAT')),
          ],
          onChanged: (value) {},
          hint: Text('Filter by Date'),
          value: 'all',
        ),
      ],
      table: DataTable(
        columns: [
          DataColumn(label: Text('Order #')),
          DataColumn(label: Text('Date')),
          DataColumn(label: Text('Patient')),
          DataColumn(label: Text('Tests')),
          DataColumn(label: Text('Priority')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Actions')),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('12345')),
              DataCell(Text('2024-06-01 10:00')),
              DataCell(Text('John Doe')),
              DataCell(Text('CBC, BMP')),
              DataCell(Text('Routine')),
              DataCell(Text('Pending')),
              DataCell(
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.visibility), onPressed: () {}),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                    IconButton(icon: Icon(Icons.cancel), onPressed: () {}),
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
