import '../../../../common.dart';

class AddClaimDialogState {
  AddClaimDialogState({this.initial, this.isLoading = false});

  final InsuranceClaim? initial;
  final bool isLoading;

  AddClaimDialogState copyWith({
    InsuranceClaim? initial,
    bool? isLoading,
  }) {
    return AddClaimDialogState(
      initial: initial ?? this.initial,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final addClaimDialogControllerProvider =
    NotifierProvider<AddClaimController, AddClaimDialogState>(
      AddClaimController.new,
    );

class AddClaimController extends Notifier<AddClaimDialogState> {
  List<Patient> patients = [];
  List<InsurancePlan> insurancePlans = [];

  final formGroup = FormGroup({
    'patient': FormControl<Patient>(
      value: null,
      validators: [Validators.required],
    ),
    'insurancePlan': FormControl<InsurancePlan>(
      value: null,
      validators: [Validators.required],
    ),
    'serviceDate': FormControl<DateTime>(
      value: null,
      validators: [Validators.required],
    ),
    'diagnosisCodes': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'procedureCodes': FormControl<String>(value: null),
    'totalAmount': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'claimedAmount': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'notes': FormControl<String>(value: null),
  });

  @override
  AddClaimDialogState build() {
    return AddClaimDialogState();
  }

  Future<void> loadData() async {
    try {
      state = state.copyWith(isLoading: true);
      patients = await ref.read(patientsServiceProvider).getPatients();
      insurancePlans = await ref.read(insuranceServiceProvider).plans();
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<bool> saveClaim() async {
    if (!formGroup.valid) return false;
    try {
      final patient = formGroup.control('patient').value as Patient;
      final plan = formGroup.control('insurancePlan').value as InsurancePlan;
      final claim = InsuranceClaim(
        patientId: patient.id,
        patientName: patient.fullName,
        insurancePlanId: plan.id,
        insurancePlanName: plan.planName,
        serviceDate: formGroup.control('serviceDate').value,
        diagnosisCodes: formGroup.control('diagnosisCodes').value,
        procedureCodes: formGroup.control('procedureCodes').value,
        totalAmount: double.tryParse(
          formGroup.control('totalAmount').value ?? '0',
        ),
        claimedAmount: double.tryParse(
          formGroup.control('claimedAmount').value ?? '0',
        ),
        notes: formGroup.control('notes').value,
      );
      await ref.read(insuranceServiceProvider).postClaims(claim);
      return true;
    } catch (e) {
      AppToast.show(e.toString());
      return false;
    }
  }
}
