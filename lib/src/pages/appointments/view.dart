import '../../../common.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppPage(
        title: 'Appointments',
        description: 'Schedule, check-in, and complete patient visits.',
        mainButtonTitle: 'Schedule',
        mainButtonOnTap: () {},
        secondarybuttons: [
          TextButton(onPressed: () {}, child: Text('Board')),
          TextButton(onPressed: () {}, child: Text('List')),
        ],
        hasSearch: true,
        secondarySearchHeaderWidgets: [
          DropdownButton<String>(
            items: [
              DropdownMenuItem(value: 'All types', child: Text('All types')),
              DropdownMenuItem(
                value: 'Consultations',
                child: Text('Consultations'),
              ),
              DropdownMenuItem(value: 'Follow-ups', child: Text('Follow-ups')),
              DropdownMenuItem(value: 'Procedures', child: Text('Procedures')),
            ],
            onChanged: (value) {},
            hint: Text('Filter'),
            value: 'All types',
          ),
          TextButton(
            onPressed: () async {
              await showDatePicker(
                context: context,
                firstDate: DateTime(1999),
                lastDate: DateTime(2040),
              );
            },
            //TODO: Show selected date instead of placeholder and add the ability to type the date in the text field
            child: Row(
              spacing: 8,
              children: [
                Text('mm/dd/yyyy'),
                Icon(Icons.calendar_today, size: 16),
              ],
            ),
          ),
        ],
        // TODO:  add Board View
        table: DataTable(
          headingRowColor: WidgetStateProperty.all(Colors.grey[200]),
          columns: [
            DataColumn(label: Text('Appt #')),
            DataColumn(label: Text('Date / time')),
            DataColumn(label: Text('Patient')),
            DataColumn(label: Text('Type')),
            DataColumn(label: Text('Doctor')),
            DataColumn(label: Text('Status')),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('12345')),
                DataCell(Text('10/12/2024, 9:00 AM')),
                DataCell(Text('John Doe')),
                DataCell(Text('Consultation')),
                DataCell(Text('Dr. Smith')),
                DataCell(Text('Scheduled')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('12346')),
                DataCell(Text('10/12/2024, 10:00 AM')),
                DataCell(Text('Jane Doe')),
                DataCell(Text('Follow-up')),
                DataCell(Text('Dr. Smith')),
                DataCell(Text('Checked-in')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
