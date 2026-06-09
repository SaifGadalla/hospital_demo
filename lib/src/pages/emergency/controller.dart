import '../../../common.dart';

class EmergencyState {
  final List<ErAmbulanceCall> ambulanceCalls;
  final bool isLoading;

  EmergencyState({this.ambulanceCalls = const [], this.isLoading = false});

  EmergencyState copyWith({
    List<ErAmbulanceCall>? ambulanceCalls,
    bool? isLoading,
  }) {
    return EmergencyState(
      ambulanceCalls: ambulanceCalls ?? this.ambulanceCalls,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final emergencyControllerProvider =
    NotifierProvider<EmergencyController, EmergencyState>(
      EmergencyController.new,
    );

class EmergencyController extends Notifier<EmergencyState> {
  @override
  EmergencyState build() => EmergencyState();

  Future<void> loadAmbulanceCalls() async {
    try {
      state = state.copyWith(isLoading: true);
      final ambulanceCalls =
          await ref.read(erServiceProvider).ambulanceCalls() ?? [];
      state = state.copyWith(ambulanceCalls: ambulanceCalls, isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }
}
