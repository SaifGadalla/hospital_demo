import 'package:hospital_demo/common.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            crossAxisAlignment: .start,
            mainAxisAlignment: .start,
            mainAxisSize: .min,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text('Dashboard'),
                      Text('Live overview across the patient lifecycle, ER, IPD, OR, and revenue cycle.'),
                    ],
                  ),
                  Row(
                    mainAxisSize: .min,
                    spacing: 20,
                    children: [
                      TextButton(onPressed: () {}, child: Text('View Patients')),
                      TextButton(onPressed: () {}, child: Text('New Appointment')),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: const [
                  NumberCard(title: 'Total Patients', icon: Icons.people, number: '1,2', footer: ''),
                  NumberCard(
                    title: 'Today appointments',
                    icon: Icons.calendar_today,
                    number: '0',
                    footer: '31 on file',
                  ),
                  NumberCard(title: 'ER active', icon: Icons.bed, number: '4', footer: '5 total today'),
                  NumberCard(title: 'Beds free', icon: Icons.healing, number: '15 / 18', footer: 'Across all wards'),
                ],
              ),
              GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  StatisticsCard(title: 'Today\'s appointments', buttonText: 'View All', buttonOnPressed: () {}),
                  StatisticsCard(title: 'Active ER patients', buttonText: 'Open triage board', buttonOnPressed: () {}),
                  StatisticsCard(title: 'Bed occupancy', buttonText: 'Manage IPD', buttonOnPressed: () {}),
                  StatisticsCard(
                    title: 'Insurance claims pipeline',
                    buttonText: 'Manage claims',
                    buttonOnPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NumberCard extends ConsumerWidget {
  final String title;
  final IconData icon;
  final String number;
  final String footer;

  const NumberCard({super.key, required this.title, required this.icon, required this.number, required this.footer});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
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
          Text(number, style: Theme.of(context).textTheme.headlineMedium),
          Text(footer, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

class StatisticsCard extends ConsumerWidget {
  final String title;
  final String buttonText;
  final VoidCallback buttonOnPressed;

  const StatisticsCard({super.key, required this.title, required this.buttonText, required this.buttonOnPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
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
              TextButton(onPressed: buttonOnPressed, child: Text(buttonText)),
            ],
          ),
          Divider(color: Colors.grey.shade400),
          Container(
            height: 200,
            color: Colors.grey.shade300,
            child: Center(child: Text('Chart Placeholder')),
          ),
        ],
      ),
    );
  }
}
