import '../../../common.dart';

class InsuranceState {
  final List<InsuranceClaim> insuranceClaims;
  final List<InsurancePreauthorization> insurancePreauthorizations;
  final List<InsurancePlan> insurancePlans;
  final bool isLoading;

  InsuranceState({
    this.insuranceClaims = const [],
    this.insurancePreauthorizations = const [],
    this.insurancePlans = const [],
    this.isLoading = false,
  });

  InsuranceState copyWith({
    List<InsuranceClaim>? insuranceClaims,
    List<InsurancePreauthorization>? insurancePreauthorizations,
    List<InsurancePlan>? insurancePlans,
    bool? isLoading,
  }) {
    return InsuranceState(
      insuranceClaims: insuranceClaims ?? this.insuranceClaims,
      insurancePreauthorizations: insurancePreauthorizations ?? this.insurancePreauthorizations,
      insurancePlans: insurancePlans ?? this.insurancePlans,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final insuranceControllerProvider =
    NotifierProvider.autoDispose<InsuranceController, InsuranceState>(
      InsuranceController.new,
    );

class InsuranceController extends Notifier<InsuranceState> {
  @override
  InsuranceState build() => InsuranceState();

  Future<void> loadInsuranceData() async {
    try {
      state = state.copyWith(isLoading: true);
      final claims = await ref.read(insuranceServiceProvider).getInsuranceClaims();
      final preauths = await ref.read(insuranceServiceProvider).preauthorizations();
      final plans = await ref.read(insuranceServiceProvider).plans();
      state = state.copyWith(
        insuranceClaims: claims,
        insurancePreauthorizations: preauths,
        insurancePlans: plans,
        isLoading: false,
      );
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> resubmitClaim(String id) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(insuranceServiceProvider).postClaimsByidSubmit(
        id,
        InsuranceClaim(),
      );
      AppToast.show('Claim resubmitted successfully');
      await loadInsuranceData();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }

  Future<void> rejectPreAuth(String id) async {
    try {
      state = state.copyWith(isLoading: true);
      await ref.read(insuranceServiceProvider).postPreauthorizationsByidReject(
        id,
        InsurancePreauthorization(),
      );
      AppToast.show('Pre-authorization cancelled successfully');
      await loadInsuranceData();
    } on Exception catch (e) {
      state = state.copyWith(isLoading: false);
      AppToast.show(e.toString());
    }
  }
}
