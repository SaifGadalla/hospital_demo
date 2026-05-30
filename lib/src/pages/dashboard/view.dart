import 'package:hospital_demo/common.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppPage(
      title: 'Dashboard',
      description:
          'Live overview across the patient lifecycle, ER, IPD, OR, and revenue cycle.',
      mainButtonTitle: 'New Appointment',
      mainButtonOnTap: () {
        context.goNamed(AppRoutes.appointments);
      },
      secondarybuttons: [
        TextButton(
          onPressed: () {
            context.goNamed(AppRoutes.patients);
          },
          child: Text('View Patients'),
        ),
      ],
      numberCards: const [
        NumberCard(
          title: 'Total Patients',
          icon: Icons.people,
          value: '12',
          footer: '',
        ),
        NumberCard(
          title: 'Today appointments',
          icon: Icons.calendar_today,
          value: '0',
          footer: '31 on file',
        ),
        NumberCard(
          title: 'ER active',
          icon: Icons.bed,
          value: '4',
          footer: '5 total today',
        ),
        NumberCard(
          title: 'Beds free',
          icon: Icons.healing,
          value: '15 / 18',
          footer: 'Across all wards',
        ),
      ],
      customBody: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          StatisticsCard(
            title: 'Today\'s appointments',
            buttonText: 'View All',
            buttonOnPressed: () {},
            content: DataTable(
              headingRowColor: WidgetStateProperty.all(Colors.grey.shade200),
              columns: const [
                DataColumn(label: Text('Time')),
                DataColumn(label: Text('Patient')),
                DataColumn(label: Text('Type')),
                DataColumn(label: Text('Status')),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(Text('John Doe')),
                    DataCell(Text('10:00 AM')),
                    DataCell(Text('Cardiology')),
                    DataCell(Text('Confirmed')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Jane Smith')),
                    DataCell(Text('11:30 AM')),
                    DataCell(Text('Orthopedics')),
                    DataCell(Text('Confirmed')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Bob Johnson')),
                    DataCell(Text('2:00 PM')),
                    DataCell(Text('Neurology')),
                    DataCell(Text('Pending')),
                  ],
                ),
              ],
            ),
          ),
          StatisticsCard(
            title: 'Active ER patients',
            buttonText: 'Open ER',
            buttonOnPressed: () {},
            content: DataTable(
              headingRowColor: WidgetStateProperty.all(Colors.grey.shade200),
              columns: [
                DataColumn(label: Text('Call #')),
                DataColumn(label: Text('Patient')),
                DataColumn(label: Text('Triage')),
                DataColumn(label: Text('Status')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('12345')),
                    DataCell(Text('Alice Brown')),
                    DataCell(Text('High')),
                    DataCell(Text('In treatment')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('12346')),
                    DataCell(Text('Charlie Davis')),
                    DataCell(Text('Medium')),
                    DataCell(Text('Waiting for doctor')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('12347')),
                    DataCell(Text('Eve Wilson')),
                    DataCell(Text('Low')),
                    DataCell(Text('Waiting for test results')),
                  ],
                ),
              ],
            ),
          ),
          StatisticsCard(
            title: 'Bed occupancy',
            buttonText: 'Manage IPD',
            buttonOnPressed: () {},
            content: ListView(
              padding: EdgeInsets.all(16),
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  mainAxisAlignment: .start,
                  mainAxisSize: .min,
                  spacing: 10,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [Text('General Ward A'), Text('2 / 8')],
                    ),
                    LinearProgressIndicator(
                      value: 5 / 6,
                      color: Colors.green,
                      backgroundColor: Colors.green.shade100,
                    ),
                  ],
                ),
              ],
            ),
          ),
          StatisticsCard(
            title: 'Insurance claims pipeline',
            buttonText: 'Manage claims',
            buttonOnPressed: () {},
            content: ListView(
              padding: EdgeInsets.all(16),
              shrinkWrap: true,
              children: [
                Row(
                  mainAxisSize: .min,
                  spacing: 10,
                  children: [
                    Expanded(child: Text('Draft')),
                    Expanded(
                      child: LinearProgressIndicator(
                        value: 15 / 20,
                        color: Colors.blue,
                        backgroundColor: Colors.blue.shade100,
                      ),
                    ),
                    Text('1'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NumberCard extends ConsumerWidget {
  final String title;
  final IconData icon;
  final String value;
  final String? footer;

  const NumberCard({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
    this.footer,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableWidth =
        MediaQuery.of(context).size.width -
        300 -
        120; // Total width minus drawer and padding
    final cardWidth =
        availableWidth * 0.25; // Each card takes up 25% of the remaining width
    final constrainedCardWidth = cardWidth.clamp(
      220,
      300,
    ); // Set min and max width for the card
    return Container(
      width: constrainedCardWidth.toDouble(),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade400),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: .min,
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        spacing: 20,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(title),
              Container(
                decoration: BoxDecoration(borderRadius: .circular(16)),
                child: Center(child: Icon(icon)),
              ),
            ],
          ),
          Text(value, style: Theme.of(context).textTheme.headlineMedium),
          if (footer != null)
            Text(footer!, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

class StatisticsCard extends ConsumerWidget {
  final String title;
  final String buttonText;
  final VoidCallback buttonOnPressed;
  final Widget content;

  const StatisticsCard({
    super.key,
    required this.title,
    required this.buttonText,
    required this.buttonOnPressed,
    required this.content,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade400),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: .min,
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(title),
                TextButton(onPressed: buttonOnPressed, child: Text(buttonText)),
              ],
            ),
          ),
          SizedBox(width: double.infinity, child: content),
        ],
      ),
    );
  }
}
