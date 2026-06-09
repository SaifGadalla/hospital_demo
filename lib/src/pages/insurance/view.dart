import 'package:intl/intl.dart';
import '../../../common.dart';
import 'add_claim_dialog/dialog.dart';
import 'controller.dart';

enum InsuranceTab { claims, preAuths, plans }

class InsurancePage extends ConsumerStatefulWidget {
  const InsurancePage({super.key});

  @override
  ConsumerState<InsurancePage> createState() => _InsurancePageState();
}

class _InsurancePageState extends ConsumerState<InsurancePage> {
  InsuranceTab _selectedTab = InsuranceTab.claims;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(insuranceControllerProvider.notifier).loadInsuranceData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(insuranceControllerProvider);
    final controller = ref.read(insuranceControllerProvider.notifier);

    return AppPage(
      title: 'Insurance & Claims',
      description: 'Plans, claims pipeline, pre-authorizations.',
      mainButtonTitle: 'New Claim',
      mainButtonOnTap: () async {
        await AddClaimDialog.show(context);
        controller.loadInsuranceData();
      },
      numberCards: [
        NumberCard(
          title: 'Total Claims',
          value: state.insuranceClaims.length.toString(),
          icon: Icons.description,
        ),
        NumberCard(
          title: 'Approved/Paid',
          value: state.insuranceClaims
              .where(
                (c) =>
                    c.status?.toLowerCase() == 'approved' ||
                    c.status?.toLowerCase() == 'paid',
              )
              .length
              .toString(),
          icon: Icons.check_circle,
        ),
        NumberCard(
          title: 'Rejected',
          value: state.insuranceClaims
              .where((c) => c.status?.toLowerCase() == 'rejected')
              .length
              .toString(),
          icon: Icons.cancel,
        ),
        NumberCard(
          title: 'Total Claimed',
          value:
              '\$${state.insuranceClaims.fold<double>(0.0, (sum, c) => sum + (c.claimedAmount ?? 0.0)).toInt()}',
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
            child: Text(
              'Claims',
              style: TextStyleManager.buttonText.copyWith(
                color: _selectedTab == InsuranceTab.claims
                    ? ColorManager.primary
                    : ColorManager.textSecondary,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _selectedTab = InsuranceTab.preAuths;
              });
            },
            child: Text(
              'Pre-auths',
              style: TextStyleManager.buttonText.copyWith(
                color: _selectedTab == InsuranceTab.preAuths
                    ? ColorManager.primary
                    : ColorManager.textSecondary,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _selectedTab = InsuranceTab.plans;
              });
            },
            child: Text(
              'Plans',
              style: TextStyleManager.buttonText.copyWith(
                color: _selectedTab == InsuranceTab.plans
                    ? ColorManager.primary
                    : ColorManager.textSecondary,
              ),
            ),
          ),
        ],
      ),
      table: state.isLoading
          ? const Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: CircularProgressIndicator(),
              ),
            )
          : _selectedTab == InsuranceTab.claims
          ? _buildClaimsTable(state.insuranceClaims, controller)
          : _selectedTab == InsuranceTab.preAuths
          ? _buildPreAuthorizationsTable(state.insurancePreauthorizations, controller)
          : _buildInsurancePlansTable(state.insurancePlans),
    );
  }

  DataTable _buildClaimsTable(List<InsuranceClaim> claims, InsuranceController controller) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Claim #')),
        DataColumn(label: Text('Service Date')),
        DataColumn(label: Text('Patient')),
        DataColumn(label: Text('Plan')),
        DataColumn(label: Text('Total')),
        DataColumn(label: Text('Paid')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('Actions')),
      ],
      rows: claims.map((claim) {
        return DataRow(
          cells: [
            DataCell(Text(claim.claimNumber ?? '')),
            DataCell(
              Text(
                claim.serviceDate != null
                    ? DateFormat('yyyy-MM-dd').format(claim.serviceDate!)
                    : '',
              ),
            ),
            DataCell(Text(claim.patientName ?? '')),
            DataCell(Text(claim.insurancePlanName ?? '')),
            DataCell(Text('\$${claim.totalAmount ?? 0.0}')),
            DataCell(Text('\$${claim.paidAmount ?? 0.0}')),
            DataCell(Text(claim.status ?? '')),
            DataCell(
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      _showClaimDetails(context, claim);
                    },
                    child: const Text('View'),
                  ),
                  TextButton(
                    onPressed: () {
                      _showResubmitConfirmation(context, claim, controller);
                    },
                    child: const Text('Resubmit'),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  DataTable _buildPreAuthorizationsTable(
    List<InsurancePreauthorization> preauths,
    InsuranceController controller,
  ) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Auth #')),
        DataColumn(label: Text('Patient')),
        DataColumn(label: Text('Service')),
        DataColumn(label: Text('Estimated Cost')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('Validity')),
        DataColumn(label: Text('Actions')),
      ],
      rows: preauths.map((auth) {
        return DataRow(
          cells: [
            DataCell(Text(auth.authNumber ?? '')),
            DataCell(Text(auth.patientName ?? '')),
            DataCell(Text(auth.serviceRequested ?? '')),
            DataCell(Text('\$${auth.estimatedCost ?? 0.0}')),
            DataCell(Text(auth.approvalStatus ?? '')),
            DataCell(
              Text(
                auth.validTo != null
                    ? DateFormat('yyyy-MM-dd').format(auth.validTo!)
                    : '',
              ),
            ),
            DataCell(
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      _showPreAuthDetails(context, auth);
                    },
                    child: const Text('View'),
                  ),
                  TextButton(
                    onPressed: () {
                      _showCancelPreAuthConfirmation(context, auth, controller);
                    },
                    child: const Text('Cancel'),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  DataTable _buildInsurancePlansTable(List<InsurancePlan> plans) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Code')),
        DataColumn(label: Text('Plan')),
        DataColumn(label: Text('Coverage')),
        DataColumn(label: Text('Co-pay')),
        DataColumn(label: Text('Deductible')),
        DataColumn(label: Text('Annual limit')),
        DataColumn(label: Text('Pre-auth')),
        DataColumn(label: Text('Status')),
      ],
      rows: plans.map((plan) {
        return DataRow(
          cells: [
            DataCell(Text(plan.planCode ?? '')),
            DataCell(Text(plan.planName ?? '')),
            DataCell(Text('${plan.coveragePercentage ?? 0.0}%')),
            DataCell(Text('\$${plan.coPayAmount ?? 0.0}')),
            DataCell(Text('\$${plan.deductibleAmount ?? 0.0}')),
            DataCell(Text('\$${plan.annualLimit ?? 0.0}')),
            DataCell(Text(plan.preAuthRequired ?? false ? 'Required' : 'No')),
            DataCell(Text(plan.isActive ?? false ? 'Active' : 'Inactive')),
          ],
        );
      }).toList(),
    );
  }

  void _showClaimDetails(BuildContext context, InsuranceClaim claim) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        scrollable: true,
        title: Text('Claim ${claim.claimNumber ?? ''}'),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow('Claim #', claim.claimNumber),
              _detailRow('Patient', claim.patientName),
              _detailRow('Plan', claim.insurancePlanName),
              _detailRow(
                'Service Date',
                claim.serviceDate != null
                    ? DateFormat('yyyy-MM-dd').format(claim.serviceDate!)
                    : null,
              ),
              _detailRow('Total Amount', '\$${claim.totalAmount ?? 0.0}'),
              _detailRow('Claimed Amount', '\$${claim.claimedAmount ?? 0.0}'),
              _detailRow('Paid Amount', '\$${claim.paidAmount ?? 0.0}'),
              _detailRow('Status', claim.status),
              _detailRow('Diagnosis Codes', claim.diagnosisCodes),
              _detailRow('Procedure Codes', claim.procedureCodes),
              _detailRow('Notes', claim.notes),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showPreAuthDetails(BuildContext context, InsurancePreauthorization auth) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        scrollable: true,
        title: Text('Pre-Authorization ${auth.authNumber ?? ''}'),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow('Auth #', auth.authNumber),
              _detailRow('Patient', auth.patientName),
              _detailRow('Service Requested', auth.serviceRequested),
              _detailRow('Estimated Cost', '\$${auth.estimatedCost ?? 0.0}'),
              _detailRow('Status', auth.approvalStatus),
              _detailRow(
                'Valid From',
                auth.validFrom != null
                    ? DateFormat('yyyy-MM-dd').format(auth.validFrom!)
                    : null,
              ),
              _detailRow(
                'Valid To',
                auth.validTo != null
                    ? DateFormat('yyyy-MM-dd').format(auth.validTo!)
                    : null,
              ),
              _detailRow('Notes', auth.remarks),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showResubmitConfirmation(
    BuildContext context,
    InsuranceClaim claim,
    InsuranceController controller,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Resubmit Claim'),
        content: Text(
          'Are you sure you want to resubmit claim ${claim.claimNumber ?? ''}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (claim.id != null) {
                await controller.resubmitClaim(claim.id!);
              }
            },
            child: const Text('Resubmit'),
          ),
        ],
      ),
    );
  }

  void _showCancelPreAuthConfirmation(
    BuildContext context,
    InsurancePreauthorization auth,
    InsuranceController controller,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cancel Pre-Authorization'),
        content: Text(
          'Are you sure you want to cancel pre-authorization ${auth.authNumber ?? ''}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (auth.id != null) {
                await controller.rejectPreAuth(auth.id!);
              }
            },
            child: const Text('Yes, Cancel'),
          ),
        ],
      ),
    );
  }

  Widget _detailRow(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 160,
            child: Text(label, style: TextStyleManager.label),
          ),
          Expanded(
            child: Text(value ?? 'N/A', style: TextStyleManager.bodyMedium),
          ),
        ],
      ),
    );
  }
}
