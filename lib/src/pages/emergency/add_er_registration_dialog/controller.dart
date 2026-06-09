import '../../../../common.dart';

class AddErRegistrationDialogState {
  AddErRegistrationDialogState({this.initial, this.isLoading = false});

  final ErRegistration? initial;
  final bool isLoading;

  AddErRegistrationDialogState copyWith({
    ErRegistration? initial,
    bool? isLoading,
  }) {
    return AddErRegistrationDialogState(
      initial: initial ?? this.initial,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final addErRegistrationDialogControllerProvider =
    NotifierProvider<
      AddErRegistrationController,
      AddErRegistrationDialogState
    >(AddErRegistrationController.new);

class AddErRegistrationController
    extends Notifier<AddErRegistrationDialogState> {
  List<Patient> patients = [];

  final formGroup = FormGroup({
    'patient': FormControl<Patient>(
      value: null,
      validators: [Validators.required],
    ),
    'arrivalMode': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'chiefComplaint': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'triageLevel': FormControl<int>(
      value: null,
      validators: [Validators.required],
    ),
    'notes': FormControl<String>(value: null),
  });

  @override
  AddErRegistrationDialogState build() {
    return AddErRegistrationDialogState();
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

  Future<bool> saveRegistration() async {
    if (!formGroup.valid) return false;
    try {
      final patient = formGroup.control('patient').value as Patient;
      final registration = ErRegistration(
        patientId: patient.id,
        patientName: patient.fullName,
        patientMRN: patient.mrn,
        arrivalMode: formGroup.control('arrivalMode').value,
        chiefComplaint: formGroup.control('chiefComplaint').value,
        triageLevel: formGroup.control('triageLevel').value,
        notes: formGroup.control('notes').value,
        arrivalTime: DateTime.now(),
      );
      await ref.read(erServiceProvider).postRegistrationsRegister(registration);
      return true;
    } catch (e) {
      AppToast.show(e.toString());
      return false;
    }
  }
}
