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
      numberCards: [
        NumberCard(
          title: 'Total Patients',
          icon: Icons.people,
          value: state.totalPatients.toString(),
          footer: '',
        ),
        NumberCard(
          title: 'Today appointments',
          icon: Icons.calendar_today,
          value: state.todayAppointments?.length.toString() ?? '0',
          footer: '${state.totalAppointments} on file',
        ),
        NumberCard(
          title: 'ER active',
          icon: Icons.bed,
          value: state.activeER?.length.toString() ?? '0',
          footer: '${state.totalERToday} total today',
        ),
        NumberCard(
          title: 'Beds free',
          icon: Icons.healing,
          value: '${state.freeBeds} / ${state.totalBeds}',
          footer: 'Across all wards',
        ),
      ],
      customBody: GridView.count(
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
            title: 'Today\'s appointments',
            buttonText: 'View All',
            buttonOnPressed: () {},
            content: AppDataTable(
              columns: const [
                AppColumn(width: 70, label: 'Time'),
                AppColumn(label: 'Patient'),
                AppColumn(width: 120, label: 'Type'),
                AppColumn(label: 'Status'),
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
            title: 'Active ER patients',
            buttonText: 'Open ER',
            buttonOnPressed: () {},
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
              title: 'Bed occupancy',
              buttonText: 'Manage IPD',
              buttonOnPressed: () {},
              content: ListView(
                padding: EdgeInsets.all(16),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ...state.wards!.map((ward) {
                    return Column(
                      crossAxisAlignment: .start,
                      mainAxisAlignment: .start,
                      mainAxisSize: .min,
                      spacing: 10,
                      children: [
                        Row(
                          mainAxisAlignment: .spaceBetween,
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
                          color: ColorManager.success,
                          backgroundColor: ColorManager.successBackground,
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
              title: 'Insurance claims pipeline',
              buttonText: 'Manage claims',
              buttonOnPressed: () {},
              content: ListView(
                padding: EdgeInsets.all(16),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ...state.insuranceClaims!.map((e) {
                    final claimed = e.claimedAmount ?? 0;
                    final total = e.totalAmount ?? 0;
                    final value = claimed / total;
                    return Column(
                      children: [
                        Row(
                          mainAxisSize: .min,
                          spacing: 10,
                          children: [
                            Expanded(child: Text(e.status ?? '')),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: value,
                                color: ColorManager.primary,
                                backgroundColor: ColorManager.primaryLight
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
                  }),
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
        border: Border.all(color: ColorManager.border),
        color: ColorManager.surface,
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
        spacing: 16,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyleManager.bodyMedium.copyWith(
                    color: ColorManager.textSecondary,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: ColorManager.primaryLight.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Icon(icon, color: ColorManager.primary, size: 20),
                ),
              ),
            ],
          ),
          Text(value, style: TextStyleManager.h2),
          if (footer != null) Text(footer!, style: TextStyleManager.caption),
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
        border: Border.all(color: ColorManager.border),
        color: ColorManager.surface,
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
                Text(title),
                TextButton(onPressed: buttonOnPressed, child: Text(buttonText)),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(width: double.infinity, child: content),
          ),
        ],
      ),
    );
  }
}
