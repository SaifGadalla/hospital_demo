import '../../../common.dart';

class LaboratoryState {
  final List<LabOrder> labOrders;
  final bool isLoading;

  LaboratoryState({this.labOrders = const [], this.isLoading = false});

  LaboratoryState copyWith({List<LabOrder>? labOrders, bool? isLoading}) {
    return LaboratoryState(
      labOrders: labOrders ?? this.labOrders,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final laboratoryControllerProvider =
    NotifierProvider.autoDispose<LaboratoryController, LaboratoryState>(
  LaboratoryController.new,
);

class LaboratoryController extends Notifier<LaboratoryState> {
  @override
  LaboratoryState build() => LaboratoryState();

  final formGroup = FormGroup({
    'status': FormControl<String?>(),
    'priority': FormControl<String?>(),
  });

  Future<void> loadLabOrders() async {
    await getLabOrders();
  }

  Future<void> getLabOrders({String? searchTerm}) async {
    try {
      state = state.copyWith(isLoading: true);
      final labOrders = await ref.read(labOrdersServiceProvider).getLabOrders(
        status: formGroup.control('status').value,
        priority: formGroup.control('priority').value,
        searchTerm: searchTerm,
      );
      state = state.copyWith(labOrders: labOrders, isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> deleteLabOrder(String id) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(labOrdersServiceProvider).deleteLabOrder(id);
      AppToast.show('Lab order cancelled successfully');
      await getLabOrders();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }
}
