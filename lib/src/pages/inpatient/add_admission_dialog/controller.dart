import '../../../../common.dart';

class AddAdmissionDialogState {
  AddAdmissionDialogState({this.initial, this.isLoading = false});

  final Admission? initial;
  final bool isLoading;

  AddAdmissionDialogState copyWith({
    Admission? initial,
    bool? isLoading,
  }) {
    return AddAdmissionDialogState(
      initial: initial ?? this.initial,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final addAdmissionDialogControllerProvider =
    NotifierProvider.autoDispose<
      AddAdmissionController,
      AddAdmissionDialogState
    >(AddAdmissionController.new);

class AddAdmissionController extends Notifier<AddAdmissionDialogState> {
  List<Patient> patients = [];
  List<Ward> wards = [];
  List<Bed> beds = [];

  final formGroup = FormGroup({
    'patient': FormControl<Patient>(
      value: null,
      validators: [Validators.required],
    ),
    'admissionType': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'admissionDiagnosis': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'ward': FormControl<Ward>(
      value: null,
      validators: [Validators.required],
    ),
    'bed': FormControl<Bed>(
      value: null,
      validators: [Validators.required],
    ),
    'admissionDate': FormControl<DateTime>(
      value: null,
      validators: [Validators.required],
    ),
    'notes': FormControl<String>(value: null),
  });

  @override
  AddAdmissionDialogState build() {
    return AddAdmissionDialogState();
  }

  Future<void> loadData() async {
    try {
      state = state.copyWith(isLoading: true);
      patients = await ref.read(patientsServiceProvider).getPatients();
      wards = await ref.read(wardsServiceProvider).getWards();
      beds = await ref.read(bedsServiceProvider).getBeds();
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  List<Bed> getBedsForWard(String? wardId) {
    if (wardId == null) return [];
    return beds.where((b) => b.wardId == wardId && b.status == 'Available').toList();
  }

  Future<bool> saveAdmission() async {
    if (!formGroup.valid) return false;
    try {
      final patient = formGroup.control('patient').value as Patient;
      final ward = formGroup.control('ward').value as Ward;
      final bed = formGroup.control('bed').value as Bed;
      final admission = Admission(
        patientId: patient.id,
        patientName: patient.fullName,
        patientMRN: patient.mrn,
        admissionType: formGroup.control('admissionType').value,
        admissionDiagnosis: formGroup.control('admissionDiagnosis').value,
        departmentId: ward.id,
        bedId: bed.id,
        bedNumber: bed.bedNumber,
        admissionDate: formGroup.control('admissionDate').value,
        notes: formGroup.control('notes').value,
      );
      await ref.read(admissionsServiceProvider).admit(admission);
      return true;
    } catch (e) {
      AppToast.show(e.toString());
      return false;
    }
  }
}
