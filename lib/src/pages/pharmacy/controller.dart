import '../../../common.dart';

class PharmacyState {
  final List<Prescription> prescriptions;
  final bool isLoading;

  PharmacyState({this.prescriptions = const [], this.isLoading = false});

  PharmacyState copyWith({List<Prescription>? prescriptions, bool? isLoading}) {
    return PharmacyState(
      prescriptions: prescriptions ?? this.prescriptions,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final pharmacyControllerProvider =
    NotifierProvider<PharmacyController, PharmacyState>(PharmacyController.new);

class PharmacyController extends Notifier<PharmacyState> {
  @override
  PharmacyState build() => PharmacyState();

  final formGroup = FormGroup({'status': FormControl<String>()});
  List<Patient> patients = [];
  List<Prescription> prescriptions = [];

  Future<void> loadPrescriptions() async {
    await getPrescriptions();
    await getPatients();
  }

  Future<void> getPrescriptions({String? searchTerm}) async {
    try {
      state = state.copyWith(isLoading: true);
      prescriptions = await ref
          .read(prescriptionsServiceProvider)
          .getPrescriptions(
            status: formGroup.control('status').value,
            searchTerm: searchTerm,
          );

      state = state.copyWith(prescriptions: prescriptions, isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> getPatients() async {
    try {
      state = state.copyWith(isLoading: true);
      patients = await Future.wait(
        prescriptions.map(
          (e) => ref.read(patientsServiceProvider).getPatientById(e.patientId!),
        ),
      );

      state = state.copyWith(isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> cancelPrescription(String id) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(prescriptionsServiceProvider).cancelPrescription(
        id,
        Prescription(status: 'Cancelled'),
      );
      AppToast.show('Prescription cancelled successfully');
      await loadPrescriptions();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> dispensePrescription(String id) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(prescriptionsServiceProvider).dispensePrescription(
        id,
        Prescription(status: 'Dispensed'),
      );
      AppToast.show('Prescription dispensed successfully');
      await loadPrescriptions();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  String getPatientName(String? patientId) {
    if (patientId == null) return '';
    try {
      return patients.firstWhere((e) => e.id == patientId).fullName ?? '';
    } catch (_) {
      return '';
    }
  }
}
