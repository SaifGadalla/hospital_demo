import '../../../common.dart';

class PatientsState {
  final List<Patient> patients;
  final bool isLoading;

  PatientsState({this.patients = const [], this.isLoading = false});

  PatientsState copyWith({List<Patient>? patients, bool? isLoading}) {
    return PatientsState(
      patients: patients ?? this.patients,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final patientsControllerProvider =
    NotifierProvider.autoDispose<PatientsController, PatientsState>(
      PatientsController.new,
    );

class PatientsController extends Notifier<PatientsState> {
  @override
  PatientsState build() => PatientsState();

  final formGroup = FormGroup({'gender': FormControl<String?>()});

  Future<void> loadPatients() async {
    await getPatients();
  }

  Future<void> getPatients({String? searchTerm}) async {
    try {
      state = state.copyWith(isLoading: true);
      final patients = await ref
          .read(patientsServiceProvider)
          .getPatients(
            gender: formGroup.control('gender').value,
            pageSize: 30,
            searchTerm: searchTerm,
          );
      state = state.copyWith(patients: patients, isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> deletePatient(String id) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(patientsServiceProvider).deletePatient(id);
      AppToast.show(S.current.patients_view_deleteSuccess);
      await getPatients();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }
}
