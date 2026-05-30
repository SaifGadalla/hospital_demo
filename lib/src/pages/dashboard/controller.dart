import '../../../common.dart';

class DashboardState {
  DashboardState({
    this.totalAppointments = 0,
    this.todayAppointments = 0,
    this.totalPatients = 0,
    this.activeER = 0,
    this.totalERToday = 0,
    this.totalBeds = 0,
    this.freeBeds = 0,
  });

  final int totalAppointments;
  final int todayAppointments;
  final int totalPatients;
  final int activeER;
  final int totalERToday;
  final int totalBeds;
  final int freeBeds;

  DashboardState copyWith({
    int? totalAppointments,
    int? todayAppointments,
    int? totalPatients,
    int? activeER,
    int? totalERToday,
    int? totalBeds,
    int? freeBeds,
  }) {
    return DashboardState(
      totalAppointments: totalAppointments ?? this.totalAppointments,
      todayAppointments: todayAppointments ?? this.todayAppointments,
      totalPatients: totalPatients ?? this.totalPatients,
      activeER: activeER ?? this.activeER,
      totalERToday: totalERToday ?? this.totalERToday,
      totalBeds: totalBeds ?? this.totalBeds,
      freeBeds: freeBeds ?? this.freeBeds,
    );
  }
}

class DashboardController extends Notifier<DashboardState> {
  @override
  build() {
    return DashboardState();
  }

  Future<void> loadDashboardData() async {
    // Simulate loading data from an API
    ref.read(patientsServiceProvider).getPatients().then((patients) {
      state = state.copyWith(
        totalPatients: patients.length,
        // Update other fields as needed
      );
    });
  }
}
