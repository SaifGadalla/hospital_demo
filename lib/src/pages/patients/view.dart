import 'package:hospital_demo/common.dart';

class PatientsPage extends ConsumerWidget {
  const PatientsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genders = ['All genders', 'male', 'female'];
    // final patients = ref.watch(patientsProvider);
    // final patients = [
    //   Patient(id: '1', name: 'John Doe', age: 30),
    //   Patient(id: '2', name: 'Jane Smith', age: 25),
    // ];
    return AppPage(
      title: 'Patients',
      description:
          'Registered patient master data — MRN, demographics, insurance, contact.',
      mainButtonTitle: 'Add Patient',
      mainButtonOnTap: () {
        // Navigate to add patient page
      },
      hasSearch: true,
      secondarySearchHeaderWidgets: [
        DropdownButton(
          value: genders[0],
          onChanged: (value) {},
          items: [
            DropdownMenuItem(value: 'All genders', child: Text('All genders')),
            DropdownMenuItem(value: 'male', child: Text('Male')),
            DropdownMenuItem(value: 'female', child: Text('Female')),
          ],
        ),
      ],
      tableHeader: 'Showing 1 of 1 patients',
      table: DataTable(
        headingRowColor: WidgetStateProperty.all(Colors.grey[200]),
        columns: const [
          DataColumn(label: Text('MRN')),
          DataColumn(label: Text('Patient')),
          DataColumn(label: Text('DOB / Age')),
          DataColumn(label: Text('Gender')),
          DataColumn(label: Text('Phone')),
          DataColumn(label: Text('Blood')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Actions')),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('MRN-2026-000001')),
              DataCell(Text('Sarah ChenVIP')),
              DataCell(Text('Mar 15, 1985 · 41y')),
              DataCell(Text('Female')),
              DataCell(Text('(555) 123-4567')),
              DataCell(Text('O+')),
              DataCell(Text('Active')),
              DataCell(
                Row(
                  spacing: 8,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('View')),
                    OutlinedButton(
                      onPressed: () {
                        // Navigate to edit patient page
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.grey),
                      ),
                      child: Text('Edit'),
                    ),
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
