import '../../../../common.dart';

class AddSurgeryBookingDialogState {
  AddSurgeryBookingDialogState({this.initial, this.isLoading = false});

  final SurgeryBooking? initial;
  final bool isLoading;

  AddSurgeryBookingDialogState copyWith({
    SurgeryBooking? initial,
    bool? isLoading,
  }) {
    return AddSurgeryBookingDialogState(
      initial: initial ?? this.initial,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final addSurgeryBookingDialogControllerProvider =
    NotifierProvider<
      AddSurgeryBookingController,
      AddSurgeryBookingDialogState
    >(AddSurgeryBookingController.new);

class AddSurgeryBookingController
    extends Notifier<AddSurgeryBookingDialogState> {
  List<Patient> patients = [];
  List<SurgicalProcedure> procedures = [];
  List<OperatingRoom> operatingRooms = [];

  final formGroup = FormGroup({
    'patient': FormControl<Patient>(
      value: null,
      validators: [Validators.required],
    ),
    'procedure': FormControl<SurgicalProcedure>(
      value: null,
      validators: [Validators.required],
    ),
    'operatingRoom': FormControl<OperatingRoom>(
      value: null,
      validators: [Validators.required],
    ),
    'scheduledDate': FormControl<DateTime>(
      value: null,
      validators: [Validators.required],
    ),
    'scheduledTime': FormControl<TimeOfDay>(
      value: null,
      validators: [Validators.required],
    ),
    'estimatedDuration': FormControl<String>(
      value: '60',
      validators: [Validators.required],
    ),
    'priority': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'anesthesiaType': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'notes': FormControl<String>(value: null),
  });

  @override
  AddSurgeryBookingDialogState build() {
    return AddSurgeryBookingDialogState();
  }

  Future<void> loadData() async {
    try {
      state = state.copyWith(isLoading: true);
      patients = await ref.read(patientsServiceProvider).getPatients();
      procedures = await ref
          .read(surgicalProceduresServiceProvider)
          .getSurgicalProcedures();
      operatingRooms = await ref
          .read(operatingRoomsServiceProvider)
          .getOperatingRooms();
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<bool> saveBooking() async {
    if (!formGroup.valid) return false;
    try {
      final patient = formGroup.control('patient').value as Patient;
      final procedure =
          formGroup.control('procedure').value as SurgicalProcedure;
      final room = formGroup.control('operatingRoom').value as OperatingRoom;
      final date = formGroup.control('scheduledDate').value as DateTime;
      final time = formGroup.control('scheduledTime').value as TimeOfDay;
      final scheduledStartTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );

      final booking = SurgeryBooking(
        patientId: patient.id,
        patientName: patient.fullName,
        surgicalProcedureId: procedure.id,
        procedureName: procedure.procedureName,
        operatingRoomId: room.id,
        operatingRoomNumber: room.roomNumber,
        scheduledDate: date,
        scheduledStartTime: scheduledStartTime,
        estimatedDuration: int.tryParse(
          formGroup.control('estimatedDuration').value ?? '60',
        ),
        priority: formGroup.control('priority').value,
        anesthesiaType: formGroup.control('anesthesiaType').value,
        notes: formGroup.control('notes').value,
      );
      await ref.read(surgeryBookingsServiceProvider).book(booking);
      return true;
    } catch (e) {
      AppToast.show(e.toString());
      return false;
    }
  }
}
