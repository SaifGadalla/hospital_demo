import '../../../common.dart';

class PharmacyPage extends StatelessWidget {
  const PharmacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Pharmacy',
      description: 'Prescriptions, dispensing, and medication tracking.',
      mainButtonTitle: 'New Prescription',
      mainButtonOnTap: () {},
      numberCards: [
        NumberCard(title: 'Total Rx', value: '120', icon: Icons.medication),
        NumberCard(title: 'Pending', value: '30', icon: Icons.pending),
        NumberCard(title: 'Dispensed', value: '15', icon: Icons.check_circle),
        NumberCard(title: 'Line items', value: '15', icon: Icons.list),
      ],
      hasSearch: true,
      secondarySearchHeaderWidgets: [
        DropdownButton<String>(
          items: const [
            DropdownMenuItem(value: 'all', child: Text('All Statuses')),
            DropdownMenuItem(value: 'cancelled', child: Text('Cancelled')),
            DropdownMenuItem(value: 'dispensed', child: Text('Dispensed')),
            DropdownMenuItem(value: 'pending', child: Text('Pending')),
          ],
          onChanged: (value) {},
          hint: const Text('Filter by status'),
          value: 'all',
        ),
      ],
      table: DataTable(
        columns: const [
          DataColumn(label: Text('Rx #')),
          DataColumn(label: Text('Date')),
          DataColumn(label: Text('Patient')),
          DataColumn(label: Text('Diagnosis')),
          DataColumn(label: Text('Items')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Actions')),
        ],
        rows: [
          DataRow(
            cells: [
              const DataCell(Text('RX12345')),
              const DataCell(Text('2024-06-01')),
              const DataCell(Text('John Doe')),
              const DataCell(Text('Hypertension')),
              const DataCell(Text('Lisinopril 10mg, 30 tablets')),
              const DataCell(Text('Pending')),
              DataCell(
                Row(
                  children: [
                    IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
                    IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          // More rows...
        ],
      ),
    );
  }
}
