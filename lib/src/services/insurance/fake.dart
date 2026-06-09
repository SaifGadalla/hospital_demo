import '../../models/_exports.dart';
import 'base.dart';

class FakeInsuranceService implements InsuranceService {
  final List<InsuranceClaim> _claims = [];
  final List<InsurancePlan> _plans = [];
  final List<InsurancePreauthorization> _preauthorizations = [];

  @override
  Future<InsuranceClaim> postClaimsByidSubmit(
    String id,
    InsuranceClaim data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _claims.add(data);
    return data;
  }

  @override
  Future<InsuranceClaim> postClaimsByidApprove(
    String id,
    InsuranceClaim data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _claims.add(data);
    return data;
  }

  @override
  Future<InsuranceClaim> postClaimsByidReject(
    String id,
    InsuranceClaim data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _claims.add(data);
    return data;
  }

  @override
  Future<InsuranceClaim> postClaimsByidPayment(
    String id,
    InsuranceClaim data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _claims.add(data);
    return data;
  }

  @override
  Future<InsuranceClaim> getClaimsByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return InsuranceClaim();
  }

  @override
  Future<InsuranceClaim> putClaimsByid(String id, InsuranceClaim data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _claims.add(data);
    return data;
  }

  @override
  Future<InsuranceClaim> deleteClaimsByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return InsuranceClaim();
  }

  @override
  Future<InsuranceClaim> getClaimsByNumberByclaimnumber(
    String claimnumber,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return InsuranceClaim();
  }

  @override
  Future<List<InsuranceClaim>> getInsuranceClaims({
    String? searchTerm,
    String? patientId,
    String? insurancePlanId,
    String? serviceProviderId,
    String? status,
    DateTime? serviceDateFrom,
    DateTime? serviceDateTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _claims;
  }

  @override
  Future<List<InsuranceClaim>> postClaims(InsuranceClaim data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _claims.add(data);
    return _claims;
  }

  @override
  Future<InsurancePlan> getPlansByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return InsurancePlan();
  }

  @override
  Future<InsurancePlan> putPlansByid(String id, InsurancePlan data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _plans.add(data);
    return data;
  }

  @override
  Future<InsurancePlan> deletePlansByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return InsurancePlan();
  }

  @override
  Future<InsurancePlan> getPlansByCodeBycode(String code) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return InsurancePlan();
  }

  @override
  Future<List<InsurancePlan>> plans({
    String? searchTerm,
    String? coverageType,
    bool? isActive,
    String? insuranceCompanyId,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _plans;
  }

  @override
  Future<List<InsurancePlan>> postPlans(InsurancePlan data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _plans.add(data);
    return _plans;
  }

  @override
  Future<InsurancePreauthorization> postPreauthorizationsByidApprove(
    String id,
    InsurancePreauthorization data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _preauthorizations.add(data);
    return data;
  }

  @override
  Future<InsurancePreauthorization> postPreauthorizationsByidReject(
    String id,
    InsurancePreauthorization data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _preauthorizations.add(data);
    return data;
  }

  @override
  Future<InsurancePreauthorization> getPreauthorizationsByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return InsurancePreauthorization();
  }

  @override
  Future<InsurancePreauthorization> putPreauthorizationsByid(
    String id,
    InsurancePreauthorization data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _preauthorizations.add(data);
    return data;
  }

  @override
  Future<InsurancePreauthorization> deletePreauthorizationsByid(
    String id,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return InsurancePreauthorization();
  }

  @override
  Future<InsurancePreauthorization> getPreauthorizationsByNumberByauthnumber(
    String authnumber,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return InsurancePreauthorization();
  }

  @override
  Future<List<InsurancePreauthorization>> preauthorizations({
    String? searchTerm,
    String? patientId,
    String? insurancePlanId,
    String? approvalStatus,
    DateTime? requestDateFrom,
    DateTime? requestDateTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _preauthorizations;
  }

  @override
  Future<List<InsurancePreauthorization>> postPreauthorizations(
    InsurancePreauthorization data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _preauthorizations.add(data);
    return _preauthorizations;
  }
}
