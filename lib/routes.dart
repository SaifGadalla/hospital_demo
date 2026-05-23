import 'common.dart';

class AppRoutes {
  static const String home = 'home';
  static const String auth = 'auth';
  static const String patients = 'patients';
  static const String dashboard = 'dashboard';
}

final routerProvider = Provider((Ref ref) => routes);

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => AppShell(child: child),
      routes: [
        GoRoute(
          path: '/',
          name: AppRoutes.home,
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(path: 'dashboard', name: AppRoutes.dashboard, builder: (context, state) => const DashboardPage()),
            GoRoute(
              path: 'patients',
              name: AppRoutes.patients,
              builder: (context, state) => const Scaffold(body: Center(child: Text('Patients Page (Coming Soon)'))),
            ),
          ],
        ),
      ],
    ),
    GoRoute(path: '/auth', name: AppRoutes.auth, builder: (context, state) => const SizedBox.shrink()),
  ],
);
