import '../../../../common.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String currentPath = GoRouterState.of(context).uri.path;

    return Drawer(
      width: 300,
      elevation: 0,
      backgroundColor: context.colors.primaryDark,
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.primaryDark,
          border: Border(
            right: BorderSide(
              color: context.colors.textInverse.withValues(alpha: 0.06),
              width: 1,
            ),
          ),
        ),
        child: Column(
          children: [
            // Header / Brand Identity
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          context.colors.secondaryLight,
                          context.colors.primaryLight,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: context.colors.secondaryLight.withValues(
                            alpha: 0.25,
                          ),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.local_hospital_rounded,
                      color: context.colors.textInverse,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.l10n.drawer_brandName,
                          style: TextStyleManager.h3.copyWith(
                            color: context.colors.textInverse,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          context.l10n.drawer_brandSubtitle,
                          style: TextStyleManager.caption.copyWith(
                            color: context.colors.textInverse.withValues(
                              alpha: 0.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: context.colors.textInverse.withValues(alpha: 0.08),
                height: 1,
              ),
            ),
            const SizedBox(height: 20),

            // Navigation Links list
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_overview,
                    icon: Icons.home_rounded,
                    routePath: '/',
                    isSelected: currentPath == '/',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_dashboard,
                    icon: Icons.dashboard_rounded,
                    routePath: '/dashboard',
                    isSelected: currentPath == '/dashboard',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_patients,
                    icon: Icons.people_alt_rounded,
                    routePath: '/patients',
                    isSelected: currentPath == '/patients',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_appointments,
                    icon: Icons.calendar_today_rounded,
                    routePath: '/appointments',
                    isSelected: currentPath == '/appointments',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_medicalRecords,
                    icon: Icons.folder_shared_rounded,
                    routePath: '/medical-records',
                    isSelected: currentPath == '/medical-records',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_pharmacy,
                    icon: Icons.local_pharmacy_rounded,
                    routePath: '/pharmacy',
                    isSelected: currentPath == '/pharmacy',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_laboratory,
                    icon: Icons.science_rounded,
                    routePath: '/laboratory',
                    isSelected: currentPath == '/laboratory',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_inpatient,
                    icon: Icons.hotel_rounded,
                    routePath: '/inpatient',
                    isSelected: currentPath == '/inpatient',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_emergency,
                    icon: Icons.emergency_rounded,
                    routePath: '/emergency',
                    isSelected: currentPath == '/emergency',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_operatingRoom,
                    icon: Icons.meeting_room_rounded,
                    routePath: '/operating-room',
                    isSelected: currentPath == '/operating-room',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: context.l10n.drawer_insurance,
                    icon: Icons.health_and_safety_rounded,
                    routePath: '/insurance',
                    isSelected: currentPath == '/insurance',
                  ),
                ],
              ),
            ),

            // User / Profile Info Footer
            Divider(
              color: context.colors.textInverse.withValues(alpha: 0.08),
              height: 1,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.black.withValues(alpha: 0.15),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          context.colors.primaryLight,
                          context.colors.secondary,
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: context.colors.primaryLight.withValues(
                            alpha: 0.2,
                          ),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        context.l10n.drawer_userInitials,
                        style: TextStyleManager.bodyMedium.copyWith(
                          color: context.colors.textInverse,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.l10n.drawer_userName,
                          style: TextStyleManager.bodyMedium.copyWith(
                            color: context.colors.textInverse,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          context.l10n.drawer_userRole,
                          style: TextStyleManager.caption.copyWith(
                            color: context.colors.textInverse.withValues(
                              alpha: 0.6,
                            ),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),

                  LangToggleButton(
                    color: context.colors.textInverse.withValues(alpha: 0.6),
                    size: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required String title,
    required IconData icon,
    required String routePath,
    required bool isSelected,
  }) {
    final activeColor = context.colors.secondaryLight;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isSelected
            ? activeColor.withValues(alpha: 0.08)
            : Colors.transparent,
      ),
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          onTap: () {
            context.go(routePath);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          leading: Icon(
            icon,
            color: isSelected
                ? activeColor
                : context.colors.textInverse.withValues(alpha: 0.55),
            size: 20,
          ),
          title: Text(
            title,
            style: TextStyleManager.bodyMedium.copyWith(
              color: isSelected
                  ? context.colors.textInverse
                  : context.colors.textInverse.withValues(alpha: 0.7),
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          horizontalTitleGap: 8,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}

class LangToggleButton extends ConsumerWidget {
  const LangToggleButton({super.key, required this.size, required this.color});
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final langState = ref.watch(langProvider);

    return IconButton(
      onPressed: () {
        ref.read(langProvider.notifier).setLocale(Locale(
          langState.languageCode == 'en' ? 'ar' : 'en',
        ));
      },
      icon: Icon(Icons.language_rounded, color: color, size: size),
      tooltip: context.l10n.drawer_language,
    );
  }
}
