import '../../../../common.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Retrieve the active route path to highlight the current page
    final String currentPath = GoRouterState.of(context).uri.path;

    return Drawer(
      width: 300,
      elevation: 0,
      backgroundColor: ColorManager.primaryDark,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.primaryDark,
          border: Border(
            right: BorderSide(
              color: ColorManager.textInverse.withValues(alpha: 0.06),
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
                      gradient: const LinearGradient(
                        colors: [
                          ColorManager.secondaryLight,
                          ColorManager.primaryLight,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.secondaryLight.withValues(alpha: 0.25),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.local_hospital_rounded,
                      color: ColorManager.textInverse,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CarePulse',
                          style: TextStyleManager.h3.copyWith(
                            color: ColorManager.textInverse,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          'Hospital Systems',
                          style: TextStyleManager.caption.copyWith(
                            color: ColorManager.textInverse.withValues(alpha: 0.6),
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
                color: ColorManager.textInverse.withValues(alpha: 0.08),
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
                    title: 'Overview',
                    icon: Icons.home_rounded,
                    routePath: '/',
                    isSelected: currentPath == '/',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: 'Dashboard',
                    icon: Icons.dashboard_rounded,
                    routePath: '/dashboard',
                    isSelected: currentPath == '/dashboard',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: 'Patients',
                    icon: Icons.people_alt_rounded,
                    routePath: '/patients',
                    isSelected: currentPath == '/patients',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: 'Appointments',
                    icon: Icons.calendar_today_rounded,
                    routePath: '/appointments',
                    isSelected: currentPath == '/appointments',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: 'Medical Records',
                    icon: Icons.folder_shared_rounded,
                    routePath: '/medical-records',
                    isSelected: currentPath == '/medical-records',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: 'Pharmacy',
                    icon: Icons.local_pharmacy_rounded,
                    routePath: '/pharmacy',
                    isSelected: currentPath == '/pharmacy',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: 'Laboratory',
                    icon: Icons.science_rounded,
                    routePath: '/laboratory',
                    isSelected: currentPath == '/laboratory',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: 'Inpatient (IPD)',
                    icon: Icons.hotel_rounded,
                    routePath: '/inpatient',
                    isSelected: currentPath == '/inpatient',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: 'Emergency',
                    icon: Icons.emergency_rounded,
                    routePath: '/emergency',
                    isSelected: currentPath == '/emergency',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: 'Operating Room',
                    icon: Icons.meeting_room_rounded,
                    routePath: '/operating-room',
                    isSelected: currentPath == '/operating-room',
                  ),
                  const SizedBox(height: 8),
                  _buildNavItem(
                    context: context,
                    title: 'Insurance',
                    icon: Icons.health_and_safety_rounded,
                    routePath: '/insurance',
                    isSelected: currentPath == '/insurance',
                  ),
                ],
              ),
            ),

            // User / Profile Info Footer
            Divider(color: ColorManager.textInverse.withValues(alpha: 0.08), height: 1),
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
                      gradient: const LinearGradient(
                        colors: [
                          ColorManager.primaryLight,
                          ColorManager.secondary,
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.primaryLight.withValues(alpha: 0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'SJ',
                        style: TextStyleManager.bodyMedium.copyWith(
                          color: ColorManager.textInverse,
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
                          'Dr. S. Jenkins',
                          style: TextStyleManager.bodyMedium.copyWith(
                            color: ColorManager.textInverse,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Chief Administrator',
                          style: TextStyleManager.caption.copyWith(
                            color: ColorManager.textInverse.withValues(alpha: 0.6),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.logout_rounded,
                      color: ColorManager.textInverse.withValues(alpha: 0.6),
                      size: 18,
                    ),
                    onPressed: () {
                      context.go('/auth');
                    },
                    tooltip: 'Logout',
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
    final activeColor = ColorManager.secondaryLight;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
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
            borderRadius: BorderRadius.circular(12),
          ),
          leading: Icon(
            icon,
            color: isSelected
                ? activeColor
                : ColorManager.textInverse.withValues(alpha: 0.55),
            size: 20,
          ),
          title: Text(
            title,
            style: TextStyleManager.bodyMedium.copyWith(
              color: isSelected
                  ? ColorManager.textInverse
                  : ColorManager.textInverse.withValues(alpha: 0.7),
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
