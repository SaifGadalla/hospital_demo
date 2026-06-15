import '../../../../common.dart';

class AddLabOrderDialogState {
  AddLabOrderDialogState({this.initial, this.isLoading = false});

  final LabOrder? initial;
  final bool isLoading;

  AddLabOrderDialogState copyWith({
    LabOrder? initial,
    bool? isLoading,
  }) {
    return AddLabOrderDialogState(
      initial: initial ?? this.initial,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final addLabOrderDialogControllerProvider =
    NotifierProvider.autoDispose<AddLabOrderController, AddLabOrderDialogState>(
      AddLabOrderController.new,
    );

class AddLabOrderController extends Notifier<AddLabOrderDialogState> {
  List<Patient> patients = [];

  final formGroup = FormGroup({
    'patient': FormControl<Patient>(
      value: null,
      validators: [Validators.required],
    ),
    'priority': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'clinicalIndication': FormControl<String>(
      value: null,
      validators: [Validators.required],
    ),
    'specimenType': FormControl<String>(value: null),
    'notes': FormControl<String>(value: null),
  });

  @override
  AddLabOrderDialogState build() {
    return AddLabOrderDialogState();
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

  Future<bool> saveLabOrder() async {
    if (!formGroup.valid) return false;
    try {
      final patient = formGroup.control('patient').value as Patient;
      final labOrder = LabOrder(
        patientId: patient.id,
        priority: formGroup.control('priority').value,
        clinicalIndication: formGroup.control('clinicalIndication').value,
        specimenType: formGroup.control('specimenType').value,
        orderDate: DateTime.now(),
      );
      await ref.read(labOrdersServiceProvider).createLabOrder(labOrder);
      return true;
    } catch (e) {
      AppToast.show(e.toString());
      return false;
    }
  }
}
