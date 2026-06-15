import '../../../common.dart';

class InpatientState {
  final List<Admission> admissions;
  final bool isLoading;

  InpatientState({this.admissions = const [], this.isLoading = false});

  InpatientState copyWith({List<Admission>? admissions, bool? isLoading}) {
    return InpatientState(
      admissions: admissions ?? this.admissions,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final inpatientControllerProvider =
    NotifierProvider.autoDispose<InpatientController, InpatientState>(InpatientController.new);

class InpatientController extends Notifier<InpatientState> {
  @override
  InpatientState build() => InpatientState();

  Future<void> loadAdmissions() async {
    try {
      state = state.copyWith(isLoading: true);
      final admissions = await ref.read(admissionsServiceProvider).getAdmissions();
      state = state.copyWith(admissions: admissions, isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> dischargeAdmission(String id) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(admissionsServiceProvider).dischargeAdmission(
        id,
        Admission(dischargeDate: DateTime.now()),
      );
      AppToast.show('Patient discharged successfully');
      await loadAdmissions();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> transferAdmission(String id, {String? newBedId, String? reason}) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(admissionsServiceProvider).transferAdmission(
        id,
        Admission(bedId: newBedId, notes: reason),
      );
      AppToast.show('Patient transferred successfully');
      await loadAdmissions();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }
}
