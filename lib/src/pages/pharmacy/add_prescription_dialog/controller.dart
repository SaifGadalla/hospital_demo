import '../../../../common.dart';

class AddPrescriptionDialogState {
  AddPrescriptionDialogState({this.initial, this.isLoading = false});

  final Prescription? initial;
  final bool isLoading;

  AddPrescriptionDialogState copyWith({
    Prescription? initial,
    bool? isLoading,
  }) {
    return AddPrescriptionDialogState(
      initial: initial ?? this.initial,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final addPrescriptionDialogControllerProvider =
    NotifierProvider<
      AddPrescriptionController,
      AddPrescriptionDialogState
    >(AddPrescriptionController.new);

class AddPrescriptionController
    extends Notifier<AddPrescriptionDialogState> {
  List<Patient> patients = [];

  final formGroup = FormGroup({
    'patient': FormControl<Patient>(
      value: null,
      validators: [Validators.required],
    ),
    'prescriptionDate': FormControl<DateTime>(
      value: null,
      validators: [Validators.required],
    ),
    'diagnosis': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'notes': FormControl<String>(value: null),
  });

  @override
  AddPrescriptionDialogState build() {
    return AddPrescriptionDialogState();
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

  Future<bool> savePrescription() async {
    if (!formGroup.valid) return false;
    try {
      final patient = formGroup.control('patient').value as Patient;
      final prescription = Prescription(
        patientId: patient.id,
        prescriptionDate: formGroup.control('prescriptionDate').value,
        diagnosis: formGroup.control('diagnosis').value,
        notes: formGroup.control('notes').value,
      );
      await ref
          .read(prescriptionsServiceProvider)
          .createPrescription(prescription);
      return true;
    } catch (e) {
      AppToast.show(e.toString());
      return false;
    }
  }
}
