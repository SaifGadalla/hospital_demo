import '../../../common.dart';

class DashboardState {
  DashboardState({
    this.totalAppointments = 0,
    this.todayAppointments,
    this.totalPatients = 0,
    this.activeER,
    this.totalERToday = 0,
    this.totalBeds = 0,
    this.freeBeds = 0,
    this.isLoading = false,
    this.wards,
    this.insuranceClaims,
  });

  final int totalAppointments;
  final List<Appointment>? todayAppointments;
  final int totalPatients;
  final List<ErRegistration>? activeER;
  final int totalERToday;
  final int totalBeds;
  final int freeBeds;
  final bool isLoading;
  final List<Ward>? wards;
  final List<InsuranceClaim>? insuranceClaims;

  DashboardState copyWith({
    int? totalAppointments,
    List<Appointment>? todayAppointments,
    int? totalPatients,
    List<ErRegistration>? activeER,
    int? totalERToday,
    int? totalBeds,
    int? freeBeds,
    bool? isLoading,
    List<Ward>? wards,
    List<InsuranceClaim>? insuranceClaims,
  }) {
    return DashboardState(
      totalAppointments: totalAppointments ?? this.totalAppointments,
      todayAppointments: todayAppointments ?? this.todayAppointments,
      totalPatients: totalPatients ?? this.totalPatients,
      activeER: activeER ?? this.activeER,
      totalERToday: totalERToday ?? this.totalERToday,
      totalBeds: totalBeds ?? this.totalBeds,
      freeBeds: freeBeds ?? this.freeBeds,
      isLoading: isLoading ?? this.isLoading,
      wards: wards ?? this.wards,
      insuranceClaims: insuranceClaims ?? this.insuranceClaims,
    );
  }
}

final dashboardControllerProvider =
    NotifierProvider.autoDispose<DashboardController, DashboardState>(
      DashboardController.new,
    );

class DashboardController extends Notifier<DashboardState> {
  @override
  build() {
    return DashboardState();
  }

  List<Bed> beds = [];

  Future<void> loadDashboardData() async {
    state = state.copyWith(isLoading: true);
    try {
      // Parallelize independent API calls for faster loading
      final results = await Future.wait([
        ref.read(patientsServiceProvider).getPatientsTotalCount(),
        ref.read(appointmentsServiceProvider).getAppointmentsTotalCount(),
        ref.read(appointmentsServiceProvider).getAppointments(appointmentDateTo: DateTime.now()),
        ref.read(erServiceProvider).getRegistrationsTotalCount(),
        ref.read(erServiceProvider).getRegistrations(status: 'Waiting'),
        ref.read(erServiceProvider).getRegistrations(status: 'InTreatment'),
        ref.read(bedsServiceProvider).getBeds(),
        ref.read(bedsServiceProvider).getBedsTotalCount(),
        ref.read(wardsServiceProvider).getWards(),
        ref.read(bedsServiceProvider).getBedsTotalCount(status: 'Available'),
        ref.read(insuranceServiceProvider).getInsuranceClaims(),
      ]);

      final patientsTotalCount = results[0] as int;
      final totalAppointments = results[1] as int;
      final todayAppointments = results[2] as List<Appointment>;
      final totalERToday = results[3] as int;
      final erRegistrationsWaiting = results[4] as List<ErRegistration>;
      final erRegistrationsInTreatment = results[5] as List<ErRegistration>;
      beds = results[6] as List<Bed>;
      final totalBeds = results[7] as int;
      final wards = results[8] as List<Ward>;
      final freeBeds = results[9] as int;
      final insuranceClaims = results[10] as List<InsuranceClaim>;

      state = state.copyWith(
        isLoading: false,
        totalPatients: patientsTotalCount,
        totalAppointments: totalAppointments,
        todayAppointments: todayAppointments,
        activeER: erRegistrationsInTreatment + erRegistrationsWaiting,
        totalERToday: totalERToday,
        totalBeds: totalBeds,
        freeBeds: freeBeds,
        wards: wards,
        insuranceClaims: insuranceClaims,
      );
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }
}
