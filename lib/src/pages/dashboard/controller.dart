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
    NotifierProvider<DashboardController, DashboardState>(
      DashboardController.new,
    );

class DashboardController extends Notifier<DashboardState> {
  @override
  build() {
    return DashboardState();
  }

  int patientsTotalCount = 0;
  int totalAppointments = 0;
  List<Appointment> todayAppointments = [];
  int totalERToday = 0;
  int totalBeds = 0;
  List<Ward> wards = [];
  List<ErRegistration> activeER = [];
  int freeBeds = 0;
  List<Bed> beds = [];
  List<ErRegistration> erRegistrationsWaiting = [];
  List<ErRegistration> erRegistrationsInTreatment = [];
  int erRegistrationsTotalCount = 0;

  Future<void> loadDashboardData() async {
    state = state.copyWith(isLoading: true);
    try {
      patientsTotalCount = await ref
          .read(patientsServiceProvider)
          .getPatientsTotalCount();

      totalAppointments = await ref
          .read(appointmentsServiceProvider)
          .getAppointmentsTotalCount();

      todayAppointments = await ref
          .read(appointmentsServiceProvider)
          .getAppointments(appointmentDateTo: DateTime.now());

      totalERToday = await ref
          .read(erServiceProvider)
          .getRegistrationsTotalCount();

      erRegistrationsWaiting = await ref
          .read(erServiceProvider)
          .getRegistrations(status: 'Waiting');

      erRegistrationsInTreatment = await ref
          .read(erServiceProvider)
          .getRegistrations(status: 'InTreatment');

      beds = await ref.read(bedsServiceProvider).getBeds();

      totalBeds = await ref.read(bedsServiceProvider).getBedsTotalCount();

      wards = await ref.read(wardsServiceProvider).getWards();

      freeBeds = await ref
          .read(bedsServiceProvider)
          .getBedsTotalCount(status: 'Available');

      final insuranceClaims = await ref
          .read(insuranceServiceProvider)
          .getInsuranceClaims();

      state = state.copyWith(
        isLoading: false,
        totalPatients: patientsTotalCount,
        totalAppointments: totalAppointments,
        todayAppointments: todayAppointments,
        activeER: erRegistrationsInTreatment + erRegistrationsWaiting,
        totalERToday: erRegistrationsTotalCount,
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
