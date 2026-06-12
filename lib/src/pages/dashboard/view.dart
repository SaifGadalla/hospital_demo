import 'package:responsive_builder/responsive_builder.dart';

import '../../../common.dart';
import 'package:intl/intl.dart';

import 'controller.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage>
    with SearchMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final controller = ref.read(dashboardControllerProvider.notifier);
      controller.loadDashboardData();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(dashboardControllerProvider.notifier);
    final state = ref.watch(dashboardControllerProvider);
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return AppPage(
      searchFormGroup: searchFormGroup,
      title: context.l10n.dashboard_view_title,
      description: context.l10n.dashboard_view_description,
      mainButtonTitle: context.l10n.dashboard_view_newAppointment,
      mainButtonOnTap: () {
        context.goNamed(AppRoutes.appointments);
      },
      secondarybuttons: [
        TextButton(
          onPressed: () {
            context.goNamed(AppRoutes.patients);
          },
          child: Text(context.l10n.dashboard_view_viewPatients),
        ),
      ],
      numberCards: [
        NumberCard(
          title: context.l10n.dashboard_view_totalPatients,
          icon: Icons.people,
          value: state.totalPatients.toString(),
        ),
        NumberCard(
          title: context.l10n.dashboard_view_todayAppointments,
          icon: Icons.calendar_today,
          value: state.todayAppointments?.length.toString() ?? '0',
          subtitle: context.l10n.dashboard_view_totalAppointmentsOnFile(state.totalAppointments.toString()),
        ),
        NumberCard(
          title: context.l10n.dashboard_view_erActive,
          icon: Icons.bed,
          value: state.activeER?.length.toString() ?? '0',
          subtitle: context.l10n.dashboard_view_totalErToday(state.totalERToday.toString()),
        ),
        NumberCard(
          title: context.l10n.dashboard_view_bedsFree,
          icon: Icons.healing,
          value: '${state.freeBeds} / ${state.totalBeds}',
          subtitle: context.l10n.dashboard_view_acrossAllWards,
        ),
      ],
      customBody: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: GridView.count(
          crossAxisCount: getValueForScreenType<int>(
            context: context,
            mobile: 1,
            tablet: 2,
            desktop: 2,
          ),
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: 350,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            StatisticsCard(
              title: Text(context.l10n.dashboard_view_todaysAppointmentsCard),
              action: TextButton(
                onPressed: () {},
                child: Text(context.l10n.dashboard_view_viewAll),
              ),
              content: AppDataTable(
                columns: [
                  AppColumn(width: 70, label: context.l10n.dashboard_view_columnTime),
                  AppColumn(label: context.l10n.dashboard_view_columnPatient),
                  AppColumn(width: 120, label: context.l10n.dashboard_view_columnType),
                  AppColumn(label: context.l10n.dashboard_view_columnStatus),
                ],
                rows: state.todayAppointments != null
                    ? state.todayAppointments!
                          .map(
                            (e) => DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    DateFormat(
                                      'HH:mm',
                                    ).format(e.appointmentDate!),
                                  ),
                                ),
                                DataCell(Text(e.patientName ?? '')),
                                DataCell(Text(e.appointmentType ?? '')),
                                DataCell(Text(e.status ?? '')),
                              ],
                            ),
                          )
                          .toList()
                    : [],
              ),
            ),
            StatisticsCard(
              title: Text(context.l10n.dashboard_view_activeErCard),
              action: TextButton(
                onPressed: () {},
                child: Text(context.l10n.dashboard_view_openEr),
              ),
              content: AppDataTable(
                columns: const [
                  AppColumn(width: 155, label: 'Call #'),
                  AppColumn(label: 'Patient'),
                  AppColumn(width: 90, label: 'Triage'),
                  AppColumn(label: 'Status'),
                ],
                rows: state.activeER != null
                    ? state.activeER!
                          .map(
                            (e) => DataRow(
                              cells: [
                                DataCell(Text(e.erNumber ?? '')),
                                DataCell(Text(e.patientName ?? '')),
                                DataCell(triageLevelWidget(e.triageLevel ?? 0)),
                                DataCell(statusWidget(e.status ?? '')),
                              ],
                            ),
                          )
                          .toList()
                    : [],
              ),
            ),
            if (state.wards != null && state.wards!.isNotEmpty)
              StatisticsCard(
                title: Text(context.l10n.dashboard_view_bedOccupancyCard),
                action: TextButton(
                  onPressed: () {},
                  child: Text(context.l10n.dashboard_view_manageIpd),
                ),
                content: ListView(
                  padding: EdgeInsets.all(16),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ...state.wards!.map((ward) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(ward.wardName ?? ''),
                              Text(
                                '${getOccupiedBeds(controller.beds, ward.id ?? '')} / ${ward.totalBeds}',
                              ),
                            ],
                          ),
                          LinearProgressIndicator(
                            value:
                                (getOccupiedBeds(
                                  controller.beds,
                                  ward.id ?? '',
                                )) /
                                (ward.totalBeds ?? 1),
                            color: context.colors.success,
                            backgroundColor: context.colors.successBackground,
                            borderRadius: BorderRadius.circular(8),
                            minHeight: 8,
                          ),
                          SizedBox(height: 8),
                        ],
                      );
                    }),
                  ],
                ),
              ),
            if (state.insuranceClaims != null &&
                state.insuranceClaims!.isNotEmpty)
              StatisticsCard(
                title: Text(context.l10n.dashboard_view_insuranceClaimsCard),
                action: TextButton(
                  onPressed: () {},
                  child: Text(context.l10n.dashboard_view_manageClaims),
                ),
                content: ListView.builder(
                  itemCount: state.insuranceClaims?.length,
                  padding: EdgeInsets.all(16),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final e = state.insuranceClaims![index];
                    final claimed = e.claimedAmount ?? 0;
                    final total = e.totalAmount ?? 0;
                    final value = claimed / total;
                    return Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(child: Text(e.status ?? '')),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: value,
                                color: context.colors.primary,
                                backgroundColor: context.colors.primaryLight
                                    .withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8),
                                minHeight: 4,
                              ),
                            ),
                            Text(value.toInt().toString()),
                          ],
                        ),
                        SizedBox(height: 10),
                      ],
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class NumberCard extends ConsumerWidget {
  final String title;
  final IconData icon;
  final String value;
  final String? subtitle;

  const NumberCard({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: getValueForScreenType<double>(
        context: context,
        mobile: double.infinity,
        tablet: 240,
        desktop: 260,
      ),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.colors.border),
        color: context.colors.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyleManager.bodyMedium.copyWith(
                    color: context.colors.textSecondary,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: context.colors.primaryLight.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Icon(icon, color: context.colors.primary, size: 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(value, style: TextStyleManager.h2),
          if (subtitle != null) Text(subtitle!, style: TextStyleManager.caption),
        ],
      ),
    );
  }
}

class StatisticsCard extends ConsumerWidget {
  final Widget title;
  final Widget action;
  final Widget content;

  const StatisticsCard({
    super.key,
    required this.title,
    required this.action,
    required this.content,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: context.colors.border),
          color: context.colors.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.02),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  title,
                  action,
                ],
              ),
            ),
            Expanded(
              child: SizedBox(width: double.infinity, child: content),
            ),
          ],
        ),
      ),
    );
  }
}
