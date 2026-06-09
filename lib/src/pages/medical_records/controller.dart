import '../../../common.dart';

class MedicalRecordsState {
  final List<MedicalRecord> medicalRecords;
  final bool isLoading;

  MedicalRecordsState({this.medicalRecords = const [], this.isLoading = false});

  MedicalRecordsState copyWith({
    List<MedicalRecord>? medicalRecords,
    bool? isLoading,
  }) {
    return MedicalRecordsState(
      medicalRecords: medicalRecords ?? this.medicalRecords,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final medicalRecordsControllerProvider =
    NotifierProvider<MedicalRecordsController, MedicalRecordsState>(
      MedicalRecordsController.new,
    );

class MedicalRecordsController extends Notifier<MedicalRecordsState> {
  @override
  MedicalRecordsState build() => MedicalRecordsState();

  Future<void> loadMedicalRecords() async {
    await getMedicalRecords();
  }

  Future<void> getMedicalRecords({String? searchTerm}) async {
    try {
      state = state.copyWith(isLoading: true);
      final medicalRecords = await ref
          .read(medicalRecordsServiceProvider)
          .getMedicalRecords(searchTerm: searchTerm);
      state = state.copyWith(medicalRecords: medicalRecords, isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> deleteMedicalRecord(String id) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(medicalRecordsServiceProvider).deleteMedicalRecord(id);
      AppToast.show('Medical record deleted successfully');
      await getMedicalRecords();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }
}
