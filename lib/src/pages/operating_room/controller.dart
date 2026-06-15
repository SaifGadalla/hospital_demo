import '../../../common.dart';

class OperatingRoomState {
  final List<SurgeryBooking> surgeryBookings;
  final bool isLoading;

  OperatingRoomState({this.surgeryBookings = const [], this.isLoading = false});

  OperatingRoomState copyWith({List<SurgeryBooking>? surgeryBookings, bool? isLoading}) {
    return OperatingRoomState(
      surgeryBookings: surgeryBookings ?? this.surgeryBookings,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final operatingRoomControllerProvider =
    NotifierProvider.autoDispose<OperatingRoomController, OperatingRoomState>(
      OperatingRoomController.new,
    );

class OperatingRoomController extends Notifier<OperatingRoomState> {
  @override
  OperatingRoomState build() => OperatingRoomState();

  Future<void> loadSurgeryBookings() async {
    try {
      state = state.copyWith(isLoading: true);
      final surgeryBookings = await ref.read(surgeryBookingsServiceProvider).getSurgeryBookings();
      state = state.copyWith(surgeryBookings: surgeryBookings, isLoading: false);
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> cancelSurgery(String id, {String? reason}) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(surgeryBookingsServiceProvider).cancelSurgeryBooking(
        id,
        SurgeryBooking(status: 'Cancelled'),
        reason: reason,
      );
      AppToast.show('Surgery booking cancelled successfully');
      await loadSurgeryBookings();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> startSurgery(String id) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(surgeryBookingsServiceProvider).startSurgeryBooking(
        id,
        SurgeryBooking(status: 'InProgress'),
      );
      AppToast.show('Surgery started');
      await loadSurgeryBookings();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }
}
