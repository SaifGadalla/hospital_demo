import '../../../common.dart';

enum InsuranceTab { claims, preAuths, plans }

class InsurancePage extends StatefulWidget {
  const InsurancePage({super.key});

  @override
  State<InsurancePage> createState() => _InsurancePageState();
}

class _InsurancePageState extends State<InsurancePage> {
  InsuranceTab _selectedTab = InsuranceTab.claims;

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Insurance \$ Claims',
      description: 'Plans, claims pipeline, pre-authorizations.',
      mainButtonTitle: 'New Claim',
      mainButtonOnTap: () {},
      numberCards: [
        NumberCard(
          title: 'Total Claims',
          value: '100',
          icon: Icons.description,
        ),
        NumberCard(
          title: 'Approved/Paid',
          value: '50',
          icon: Icons.check_circle,
        ),
        NumberCard(title: 'Rejected', value: '30', icon: Icons.cancel),
        NumberCard(
          title: 'Total Claimed',
          value: '\$20,000',
          icon: Icons.attach_money,
        ),
      ],
      hasSearch: false,
      customBody: Row(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                _selectedTab = InsuranceTab.claims;
              });
            },
            child: Text('Claims'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _selectedTab = InsuranceTab.preAuths;
              });
            },
            child: Text('Pre-auths'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _selectedTab = InsuranceTab.plans;
              });
            },
            child: Text('Plans'),
          ),
        ],
      ),
      table: _selectedTab == InsuranceTab.claims
          ? _buildClaimsTable()
          : _selectedTab == InsuranceTab.preAuths
          ? _buildPreAuthorizationsTable()
          : _buildInsurancePlansTable(),
    );
  }

  DataTable _buildClaimsTable() {
    return DataTable(
      columns: [
        DataColumn(label: Text('Claim #')),
        DataColumn(label: Text('Service Date')),
        DataColumn(label: Text('Patient')),
        DataColumn(label: Text('Plan')),
        DataColumn(label: Text('Total')),
        DataColumn(label: Text('Paid')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('Actions')),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(Text('12345')),
            DataCell(Text('2024-06-01')),
            DataCell(Text('John Doe')),
            DataCell(Text('HealthPlus Gold')),
            DataCell(Text('\$1,000')),
            DataCell(Text('\$800')),
            DataCell(Text('Approved')),
            DataCell(
              Row(
                children: [
                  TextButton(onPressed: () {}, child: Text('View')),
                  TextButton(onPressed: () {}, child: Text('Resubmit')),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  DataTable _buildPreAuthorizationsTable() {
    return DataTable(
      columns: [
        DataColumn(label: Text('Auth #')),
        DataColumn(label: Text('Patient')),
        DataColumn(label: Text('Service')),
        DataColumn(label: Text('Estimated Cost')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('Validity')),
        DataColumn(label: Text('Actions')),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(Text('54321')),
            DataCell(Text('Jane Smith')),
            DataCell(Text('MRI Scan')),
            DataCell(Text('\$500')),
            DataCell(Text('Pending')),
            DataCell(Text('2024-06-30')),
            DataCell(
              Row(
                children: [
                  TextButton(onPressed: () {}, child: Text('View')),
                  TextButton(onPressed: () {}, child: Text('Cancel')),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  DataTable _buildInsurancePlansTable() {
    return DataTable(
      columns: [
        DataColumn(label: Text('Code')),
        DataColumn(label: Text('Plan')),
        DataColumn(label: Text('Coverage')),
        DataColumn(label: Text('Co-pay')),
        DataColumn(label: Text('Deductible')),
        DataColumn(label: Text('Annual limit')),
        DataColumn(label: Text('Pre-auth')),
        DataColumn(label: Text('Status')),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(Text('HPGOLD')),
            DataCell(Text('HealthPlus Gold')),
            DataCell(Text('80%')),
            DataCell(Text('\$20')),
            DataCell(Text('\$500')),
            DataCell(Text('\$10,000')),
            DataCell(Text('Required')),
            DataCell(Text('Active')),
          ],
        ),
      ],
    );
  }
}
