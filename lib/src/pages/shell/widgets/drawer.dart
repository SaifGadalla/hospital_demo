import 'package:hospital_demo/common.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Retrieve the active route path to highlight the current page
    final String currentPath = GoRouterState.of(context).uri.path;

    return Drawer(
      width: 300,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF0F172A), // Slate 900
          border: Border(
            right: BorderSide(
              color: Colors.white.withValues(alpha: 0.06),
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
                          Color(0xFF2DD4BF),
                          Color(0xFF3B82F6),
                        ], // Teal 400 to Blue 500
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(
                            0xFF2DD4BF,
                          ).withValues(alpha: 0.25),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.local_hospital_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CarePulse',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          'Hospital Systems',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.45),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
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
                color: Colors.white.withValues(alpha: 0.08),
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
            Divider(color: Colors.white.withValues(alpha: 0.08), height: 1),
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
                          Color(0xFF3B82F6),
                          Color(0xFF10B981),
                        ], // Blue 500 to Emerald 500
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF3B82F6).withValues(alpha: 0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'SJ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Dr. S. Jenkins',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Chief Administrator',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.45),
                            fontSize: 10,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.logout_rounded,
                      color: Colors.white.withValues(alpha: 0.45),
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
    final activeColor = const Color(0xFF2DD4BF); // Teal 400

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
                : Colors.white.withValues(alpha: 0.55),
            size: 20,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: isSelected
                  ? Colors.white
                  : Colors.white.withValues(alpha: 0.7),
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              fontSize: 14,
            ),
          ),
          horizontalTitleGap: 8,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}
