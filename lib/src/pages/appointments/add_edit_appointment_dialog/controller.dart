import '../../../../common.dart';

class AddEditAppointmentDialogState {
  AddEditAppointmentDialogState({this.initial, this.isLoading = false, this.isSaving = false});

  final Appointment? initial;
  final bool isLoading;
  final bool isSaving;

  AddEditAppointmentDialogState copyWith({
    Appointment? initial,
    bool? isLoading,
    bool? isSaving,
  }) {
    return AddEditAppointmentDialogState(
      initial: initial ?? this.initial,
      isLoading: isLoading ?? this.isLoading,
      isSaving: isSaving ?? this.isSaving,
    );
  }
}

final addEditAppointmentDialogControllerProvider =
    NotifierProvider<
      AddEditAppointmentController,
      AddEditAppointmentDialogState
    >(AddEditAppointmentController.new);

class AddEditAppointmentController
    extends Notifier<AddEditAppointmentDialogState> {
  List<Patient> patients = [];

  final formGroup = FormGroup({
    'patient': FormControl<Patient>(
      value: null,
      validators: [Validators.required],
    ),
    'date': FormControl<DateTime>(
      value: null,
      validators: [Validators.required],
    ),
    'time': FormControl<TimeOfDay>(
      value: null,
      validators: [Validators.required],
    ),
    'duration': FormControl<int>(value: 20, validators: [Validators.required]),
    'type': FormControl<String>(value: null, validators: [Validators.required]),
    'note': FormControl<String>(value: null),
  });

  @override
  AddEditAppointmentDialogState build() {
    return AddEditAppointmentDialogState();
  }

  Future<void> loadData() async {
    try {
      state = state.copyWith(isLoading: true);
      patients = await ref.read(patientsServiceProvider).getPatients();
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<bool> saveAppointment() async {
    if (!formGroup.valid) return false;
    try {
      state = state.copyWith(isSaving: true);
      final patient = formGroup.control('patient').value as Patient;
      final date = formGroup.control('date').value as DateTime;
      final time = formGroup.control('time').value as TimeOfDay;
      final appointmentDate = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );

      final appointment = Appointment(
        patientId: patient.id,
        patientName: patient.fullName,
        appointmentDate: appointmentDate,
        durationMinutes: formGroup.control('duration').value,
        appointmentType: formGroup.control('type').value,
        notes: formGroup.control('note').value,
      );
      await ref
          .read(appointmentsServiceProvider)
          .createAppointment(appointment);
      state = state.copyWith(isSaving: false);
      AppToast.show('Appointment created successfully');
      return true;
    } catch (e) {
      state = state.copyWith(isSaving: false);
      AppToast.show(e.toString());
      return false;
    }
  }
}
