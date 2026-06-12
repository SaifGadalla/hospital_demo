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
      title: context.l10n.insurance_view_title,
      description: context.l10n.insurance_view_description,
      mainButtonTitle: context.l10n.insurance_view_newClaim,
      mainButtonOnTap: () async {
        await AddClaimDialog.show(context);
        controller.loadInsuranceData();
      },
      numberCards: [
        NumberCard(
          title: context.l10n.insurance_view_totalClaims,
          value: state.insuranceClaims.length.toString(),
          icon: Icons.description,
        ),
        NumberCard(
          title: context.l10n.insurance_view_approvedPaid,
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
          title: context.l10n.insurance_view_rejected,
          value: state.insuranceClaims
              .where((c) => c.status?.toLowerCase() == 'rejected')
              .length
              .toString(),
          icon: Icons.cancel,
        ),
        NumberCard(
          title: context.l10n.insurance_view_totalClaimed,
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
              context.l10n.insurance_view_claimsTab,
              style: TextStyleManager.buttonText.copyWith(
                color: _selectedTab == InsuranceTab.claims
                    ? context.colors.primary
                    : context.colors.textSecondary,
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
              context.l10n.insurance_view_preAuthsTab,
              style: TextStyleManager.buttonText.copyWith(
                color: _selectedTab == InsuranceTab.preAuths
                    ? context.colors.primary
                    : context.colors.textSecondary,
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
              context.l10n.insurance_view_plansTab,
              style: TextStyleManager.buttonText.copyWith(
                color: _selectedTab == InsuranceTab.plans
                    ? context.colors.primary
                    : context.colors.textSecondary,
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
          ? _buildPreAuthorizationsTable(
              state.insurancePreauthorizations,
              controller,
            )
          : _buildInsurancePlansTable(state.insurancePlans),
    );
  }

  DataTable _buildClaimsTable(
    List<InsuranceClaim> claims,
    InsuranceController controller,
  ) {
    return DataTable(
      columns: [
        DataColumn(label: Text(context.l10n.insurance_view_columnClaim)),
        DataColumn(label: Text(context.l10n.insurance_view_columnServiceDate)),
        DataColumn(label: Text(context.l10n.insurance_view_columnPatient)),
        DataColumn(label: Text(context.l10n.insurance_view_columnPlan)),
        DataColumn(label: Text(context.l10n.insurance_view_columnTotal)),
        DataColumn(label: Text(context.l10n.insurance_view_columnPaid)),
        DataColumn(label: Text(context.l10n.insurance_view_columnStatus)),
        DataColumn(label: Text(context.l10n.insurance_view_columnActions)),
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
                    child: Text(context.l10n.insurance_view_viewAction),
                  ),
                  TextButton(
                    onPressed: () {
                      _showResubmitConfirmation(context, claim, controller);
                    },
                    child: Text(context.l10n.insurance_view_resubmitAction),
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
      columns: [
        DataColumn(label: Text(context.l10n.insurance_view_columnAuth)),
        DataColumn(label: Text(context.l10n.insurance_view_columnPatient)),
        DataColumn(label: Text(context.l10n.insurance_view_columnService)),
        DataColumn(
          label: Text(context.l10n.insurance_view_columnEstimatedCost),
        ),
        DataColumn(label: Text(context.l10n.insurance_view_columnStatus)),
        DataColumn(label: Text(context.l10n.insurance_view_columnValidity)),
        DataColumn(label: Text(context.l10n.insurance_view_columnActions)),
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
                    child: Text(context.l10n.insurance_view_viewAction),
                  ),
                  TextButton(
                    onPressed: () {
                      _showCancelPreAuthConfirmation(context, auth, controller);
                    },
                    child: Text(context.l10n.insurance_view_cancelAction),
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
      columns: [
        DataColumn(label: Text(context.l10n.insurance_view_columnCode)),
        DataColumn(label: Text(context.l10n.insurance_view_columnPlan)),
        DataColumn(label: Text(context.l10n.insurance_view_columnCoverage)),
        DataColumn(label: Text(context.l10n.insurance_view_columnCoPay)),
        DataColumn(label: Text(context.l10n.insurance_view_columnDeductible)),
        DataColumn(label: Text(context.l10n.insurance_view_columnAnnualLimit)),
        DataColumn(label: Text(context.l10n.insurance_view_columnPreAuth)),
        DataColumn(label: Text(context.l10n.insurance_view_columnStatus)),
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
            DataCell(
              Text(
                plan.preAuthRequired ?? false
                    ? context.l10n.insurance_view_required
                    : context.l10n.insurance_view_no,
              ),
            ),
            DataCell(
              Text(
                plan.isActive ?? false
                    ? context.l10n.insurance_view_active
                    : context.l10n.insurance_view_inactive,
              ),
            ),
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
        title: Text(
          context.l10n.insurance_view_claimTitle(claim.claimNumber ?? ''),
        ),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow(
                context.l10n.insurance_view_columnClaim,
                claim.claimNumber,
              ),
              _detailRow(
                context.l10n.insurance_view_columnPatient,
                claim.patientName,
              ),
              _detailRow(
                context.l10n.insurance_view_columnPlan,
                claim.insurancePlanName,
              ),
              _detailRow(
                context.l10n.insurance_view_columnServiceDate,
                claim.serviceDate != null
                    ? DateFormat('yyyy-MM-dd').format(claim.serviceDate!)
                    : null,
              ),
              _detailRow(
                context.l10n.insurance_view_totalAmount,
                '\$${claim.totalAmount ?? 0.0}',
              ),
              _detailRow(
                context.l10n.insurance_view_claimedAmount,
                '\$${claim.claimedAmount ?? 0.0}',
              ),
              _detailRow(
                context.l10n.insurance_view_paidAmount,
                '\$${claim.paidAmount ?? 0.0}',
              ),
              _detailRow(
                context.l10n.insurance_view_columnStatus,
                claim.status,
              ),
              _detailRow(
                context.l10n.insurance_view_diagnosisCodes,
                claim.diagnosisCodes,
              ),
              _detailRow(
                context.l10n.insurance_view_procedureCodes,
                claim.procedureCodes,
              ),
              _detailRow(context.l10n.insurance_view_notes, claim.notes),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.insurance_view_close),
          ),
        ],
      ),
    );
  }

  void _showPreAuthDetails(
    BuildContext context,
    InsurancePreauthorization auth,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        scrollable: true,
        title: Text(
          context.l10n.insurance_view_preAuthTitle(auth.authNumber ?? ''),
        ),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow(
                context.l10n.insurance_view_columnAuth,
                auth.authNumber,
              ),
              _detailRow(
                context.l10n.insurance_view_columnPatient,
                auth.patientName,
              ),
              _detailRow(
                context.l10n.insurance_view_serviceRequested,
                auth.serviceRequested,
              ),
              _detailRow(
                context.l10n.insurance_view_columnEstimatedCost,
                '\$${auth.estimatedCost ?? 0.0}',
              ),
              _detailRow(
                context.l10n.insurance_view_columnStatus,
                auth.approvalStatus,
              ),
              _detailRow(
                context.l10n.insurance_view_validFrom,
                auth.validFrom != null
                    ? DateFormat('yyyy-MM-dd').format(auth.validFrom!)
                    : null,
              ),
              _detailRow(
                context.l10n.insurance_view_validTo,
                auth.validTo != null
                    ? DateFormat('yyyy-MM-dd').format(auth.validTo!)
                    : null,
              ),
              _detailRow(context.l10n.insurance_view_notes, auth.remarks),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.insurance_view_close),
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
        title: Text(context.l10n.insurance_view_resubmitTitle),
        content: Text(
          context.l10n.insurance_view_resubmitMsg(claim.claimNumber ?? ''),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.insurance_view_cancelAction),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (claim.id != null) {
                await controller.resubmitClaim(claim.id!);
              }
            },
            child: Text(context.l10n.insurance_view_resubmitAction),
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
        title: Text(context.l10n.insurance_view_cancelPreAuthTitle),
        content: Text(
          context.l10n.insurance_view_cancelPreAuthMsg(auth.authNumber ?? ''),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.insurance_view_no),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (auth.id != null) {
                await controller.rejectPreAuth(auth.id!);
              }
            },
            child: Text(context.l10n.insurance_view_yesCancel),
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
