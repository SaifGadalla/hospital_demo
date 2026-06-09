import '../../../../common.dart';

class AddMedicalRecordDialogState {
  AddMedicalRecordDialogState({this.isLoading = false, this.isSaving = false});

  final bool isLoading;
  final bool isSaving;

  AddMedicalRecordDialogState copyWith({bool? isLoading, bool? isSaving}) {
    return AddMedicalRecordDialogState(
      isLoading: isLoading ?? this.isLoading,
      isSaving: isSaving ?? this.isSaving,
    );
  }
}

final addMedicalRecordDialogControllerProvider =
    NotifierProvider<AddMedicalRecordController, AddMedicalRecordDialogState>(
      AddMedicalRecordController.new,
    );

class AddMedicalRecordController extends Notifier<AddMedicalRecordDialogState> {
  List<Patient> patients = [];

  final formGroup = FormGroup({
    'patient': FormControl<Patient>(
      value: null,
      validators: [Validators.required],
    ),
    'visitDate': FormControl<DateTime>(
      value: null,
      validators: [Validators.required],
    ),
    'diagnosisCode': FormControl<String>(value: null),
    'diagnosisDescription': FormControl<String>(value: null),
    'subjective': FormControl<String>(value: null),
    'objective': FormControl<String>(value: null),
    'assessment': FormControl<String>(value: null),
    'plan': FormControl<String>(value: null),
    'allergies': FormControl<String>(value: null),
    'currentMedications': FormControl<String>(value: null),
    'clinicalNotes': FormControl<String>(value: null),
  });

  @override
  AddMedicalRecordDialogState build() {
    return AddMedicalRecordDialogState();
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

  Future<bool> saveMedicalRecord() async {
    if (!formGroup.valid) return false;
    try {
      state = state.copyWith(isSaving: true);
      final patient = formGroup.control('patient').value as Patient;
      final record = MedicalRecord(
        patientId: patient.id,
        visitDate: formGroup.control('visitDate').value,
        diagnosisCode: formGroup.control('diagnosisCode').value,
        diagnosisDescription: formGroup.control('diagnosisDescription').value,
        subjective: formGroup.control('subjective').value,
        objective: formGroup.control('objective').value,
        assessment: formGroup.control('assessment').value,
        plan: formGroup.control('plan').value,
        allergies: formGroup.control('allergies').value,
        currentMedications: formGroup.control('currentMedications').value,
        clinicalNotes: formGroup.control('clinicalNotes').value,
      );
      await ref.read(medicalRecordsServiceProvider).createMedicalRecord(record);
      state = state.copyWith(isSaving: false);
      AppToast.show('Medical record created successfully');
      return true;
    } catch (e) {
      state = state.copyWith(isSaving: false);
      AppToast.show(e.toString());
      return false;
    }
  }
}
