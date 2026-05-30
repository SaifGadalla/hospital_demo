import '../../../common.dart';

class InpatientPage extends StatelessWidget {
  const InpatientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Inpatient (IPD)',
      description: 'Wards, beds, admissions, transfers, and discharges.',
      mainButtonTitle: 'Admit',
      mainButtonOnTap: () {},
      numberCards: [
        NumberCard(title: 'Active admissions', value: '80', icon: Icons.bed),
        NumberCard(title: 'Beds occupied', value: '5', icon: Icons.hotel),
        NumberCard(
          title: 'Beds available',
          value: '3',
          icon: Icons.local_hotel,
        ),
        NumberCard(title: 'Occupancy rate', value: '10', icon: Icons.percent),
      ],
      tableHeader: 'Active Admissions',
      customBody: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text('Available'),
                  Text('Occupied'),
                  Text('Cleaning'),
                  Text('Blocked'),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Filter by Ward'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Filter by Date'),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      table: DataTable(
        headingRowColor: .all(Colors.grey[200]),
        columns: [
          DataColumn(label: Text('Admission #')),
          DataColumn(label: Text('Patient')),
          DataColumn(label: Text('Bed')),
          DataColumn(label: Text('Diagnosis')),
          DataColumn(label: Text('Date Admitted')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Actions')),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('A12345')),
              DataCell(Text('John Doe')),
              DataCell(Text('Ward 1, Bed 2')),
              DataCell(Text('Pneumonia')),
              DataCell(Text('2024-06-01')),
              DataCell(Text('Admitted')),
              DataCell(
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.transfer_within_a_station),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          // More rows can be added here
        ],
      ),
    );
  }
}
