import '../../../common.dart';

class AppointmentsState {
  final List<Appointment> appointments;
  final bool isLoading;

  AppointmentsState({this.appointments = const [], this.isLoading = false});

  AppointmentsState copyWith({
    List<Appointment>? appointments,
    bool? isLoading,
  }) {
    return AppointmentsState(
      appointments: appointments ?? this.appointments,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final appointmentsControllerProvider =
    NotifierProvider.autoDispose<AppointmentsController, AppointmentsState>(
      AppointmentsController.new,
    );

class AppointmentsController extends Notifier<AppointmentsState> {
  @override
  AppointmentsState build() => AppointmentsState();

  final formGroup = FormGroup({
    'type': FormControl<String?>(),
    'date': FormControl<DateTime?>(),
  });

  Future<void> loadAppointments() async {
    await getAppointments();
  }

  Future<void> getAppointments({String? searchTerm}) async {
    try {
      state = state.copyWith(isLoading: true);
      final appointments = await ref
          .read(appointmentsServiceProvider)
          .getAppointments(
            appointmentDateTo: formGroup.controls['date']?.value as DateTime?,
            appointmentType: formGroup.controls['type']?.value as String?,
            pageSize: 30,
            searchTerm: searchTerm,
          );
      state = state.copyWith(appointments: appointments, isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }
}
