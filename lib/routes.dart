import 'common.dart';

class AppRoutes {
  static const String home = 'home';
  static const String auth = 'auth';
  static const String patients = 'patients';
  static const String dashboard = 'dashboard';
  static const String appointments = 'appointments';
  static const String medicalRecords = 'medical_records';
  static const String pharmacy = 'pharmacy';
  static const String laboratory = 'laboratory';
  static const String inpatient = 'inpatient';
  static const String emergency = 'emergency';
  static const String operatingRoom = 'operating_room';
  static const String insurance = 'insurance';
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
            GoRoute(
              path: 'dashboard',
              name: AppRoutes.dashboard,
              builder: (context, state) => const DashboardPage(),
            ),
            GoRoute(
              path: 'patients',
              name: AppRoutes.patients,
              builder: (context, state) => const PatientsPage(),
            ),
            GoRoute(
              path: 'appointments',
              name: AppRoutes.appointments,
              builder: (context, state) => const AppointmentsPage(),
            ),
            GoRoute(
              path: 'medical-records',
              name: AppRoutes.medicalRecords,
              builder: (context, state) => const MedicalRecordsPage(),
            ),
            GoRoute(
              path: 'pharmacy',
              name: AppRoutes.pharmacy,
              builder: (context, state) => const PharmacyPage(),
            ),
            GoRoute(
              path: 'laboratory',
              name: AppRoutes.laboratory,
              builder: (context, state) => const LaboratoryPage(),
            ),
            GoRoute(
              path: 'inpatient',
              name: AppRoutes.inpatient,
              builder: (context, state) => const InpatientPage(),
            ),
            GoRoute(
              path: 'emergency',
              name: AppRoutes.emergency,
              builder: (context, state) => const EmergencyPage(),
            ),
            GoRoute(
              path: 'operating-room',
              name: AppRoutes.operatingRoom,
              builder: (context, state) => const OperatingRoomPage(),
            ),
            GoRoute(
              path: 'insurance',
              name: AppRoutes.insurance,
              builder: (context, state) => const InsurancePage(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/auth',
      name: AppRoutes.auth,
      builder: (context, state) => const AuthPage(),
    ),
  ],
);
