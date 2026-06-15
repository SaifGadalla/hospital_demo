import '../../../../common.dart';

class AddEditPatientDialogState {
  AddEditPatientDialogState({this.initial, this.isSaving = false});

  final Patient? initial;
  final bool isSaving;

  bool get isEditing => initial != null;

  AddEditPatientDialogState copyWith({Patient? initial, bool? isSaving}) {
    return AddEditPatientDialogState(
      initial: initial ?? this.initial,
      isSaving: isSaving ?? this.isSaving,
    );
  }
}

class AddEditPatientController extends Notifier<AddEditPatientDialogState> {
  final formGroup = FormGroup({
    'firstName': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'middleName': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'lastName': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'dateOfBirth': FormControl<DateTime>(
      value: DateTime.now(),
      validators: [Validators.required],
    ),
    'gender': FormControl<String>(value: '', validators: [Validators.required]),
    'bloodType': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'nationalId': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'email': FormControl<String>(
      value: '',
      validators: [Validators.required, Validators.email],
    ),
    'mobile': FormControl<String>(value: '', validators: [Validators.required]),
    'address': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'emergencyContactName': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'emergencyContactPhone': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'emergencyContactRelationship': FormControl<String>(
      value: '',
      validators: [Validators.required],
    ),
    'isActive': FormControl<bool>(
      value: false,
      validators: [Validators.required],
    ),
    'isVip': FormControl<bool>(value: false, validators: [Validators.required]),
  });

  void populateForEdit(Patient patient) {
    state = state.copyWith(initial: patient);
    formGroup.control('firstName').value = patient.firstName ?? '';
    formGroup.control('middleName').value = patient.middleName ?? '';
    formGroup.control('lastName').value = patient.lastName ?? '';
    formGroup.control('dateOfBirth').value =
        patient.dateOfBirth ?? DateTime.now();
    formGroup.control('gender').value = patient.gender ?? '';
    formGroup.control('bloodType').value = patient.bloodType ?? '';
    formGroup.control('nationalId').value = patient.nationalId ?? '';
    formGroup.control('email').value = patient.email ?? '';
    formGroup.control('mobile').value = patient.mobile ?? '';
    formGroup.control('address').value = patient.address ?? '';
    formGroup.control('emergencyContactName').value =
        patient.emergencyContactName ?? '';
    formGroup.control('emergencyContactPhone').value =
        patient.emergencyContactPhone ?? '';
    formGroup.control('emergencyContactRelationship').value =
        patient.emergencyContactRelationship ?? '';
    formGroup.control('isActive').value = patient.isActive ?? false;
    formGroup.control('isVip').value = patient.isVIP ?? false;
  }

  Patient _buildPatient() {
    return Patient(
      id: state.initial?.id,
      firstName: formGroup.control('firstName').value,
      middleName: formGroup.control('middleName').value,
      lastName: formGroup.control('lastName').value,
      dateOfBirth: formGroup.control('dateOfBirth').value,
      gender: formGroup.control('gender').value,
      bloodType: formGroup.control('bloodType').value,
      nationalId: formGroup.control('nationalId').value,
      email: formGroup.control('email').value,
      mobile: formGroup.control('mobile').value,
      address: formGroup.control('address').value,
      emergencyContactName: formGroup.control('emergencyContactName').value,
      emergencyContactPhone: formGroup.control('emergencyContactPhone').value,
      emergencyContactRelationship: formGroup
          .control('emergencyContactRelationship')
          .value,
      isActive: formGroup.control('isActive').value,
      isVIP: formGroup.control('isVip').value,
    );
  }

  Future<bool> addPatient() async {
    if (!formGroup.valid) return false;
    try {
      state = state.copyWith(isSaving: true);
      final patient = _buildPatient();
      await ref.read(patientsServiceProvider).createPatient(patient);
      state = state.copyWith(isSaving: false);
      AppToast.show('Patient created successfully');
      return true;
    } catch (e) {
      state = state.copyWith(isSaving: false);
      AppToast.show(e.toString());
      return false;
    }
  }

  Future<bool> editPatient() async {
    if (!formGroup.valid || state.initial?.id == null) return false;
    try {
      state = state.copyWith(isSaving: true);
      final patient = _buildPatient();
      await ref
          .read(patientsServiceProvider)
          .updatePatient(state.initial!.id!, patient);
      state = state.copyWith(isSaving: false);
      AppToast.show('Patient updated successfully');
      return true;
    } catch (e) {
      state = state.copyWith(isSaving: false);
      AppToast.show(e.toString());
      return false;
    }
  }

  @override
  AddEditPatientDialogState build() {
    return AddEditPatientDialogState();
  }
}

final addEditPatientControllerProvider =
    NotifierProvider.autoDispose<AddEditPatientController, AddEditPatientDialogState>(
      AddEditPatientController.new,
    );
