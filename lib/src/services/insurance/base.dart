import '../../models/_exports.dart';

abstract class InsuranceService {
  Future<InsuranceClaim> postClaimsByidSubmit(String id, InsuranceClaim data);
  Future<InsuranceClaim> postClaimsByidApprove(String id, InsuranceClaim data);
  Future<InsuranceClaim> postClaimsByidReject(String id, InsuranceClaim data);
  Future<InsuranceClaim> postClaimsByidPayment(String id, InsuranceClaim data);
  Future<InsuranceClaim> getClaimsByid(String id);
  Future<InsuranceClaim> putClaimsByid(String id, InsuranceClaim data);
  Future<InsuranceClaim> deleteClaimsByid(String id);
  Future<InsuranceClaim> getClaimsByNumberByclaimnumber(String claimnumber);
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
  });
  Future<List<InsuranceClaim>> postClaims(InsuranceClaim data);
  Future<InsurancePlan> getPlansByid(String id);
  Future<InsurancePlan> putPlansByid(String id, InsurancePlan data);
  Future<InsurancePlan> deletePlansByid(String id);
  Future<InsurancePlan> getPlansByCodeBycode(String code);
  Future<List<InsurancePlan>> plans({
    String? searchTerm,
    String? coverageType,
    bool? isActive,
    String? insuranceCompanyId,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<List<InsurancePlan>> postPlans(InsurancePlan data);
  Future<InsurancePreauthorization> postPreauthorizationsByidApprove(
    String id,
    InsurancePreauthorization data,
  );
  Future<InsurancePreauthorization> postPreauthorizationsByidReject(
    String id,
    InsurancePreauthorization data,
  );
  Future<InsurancePreauthorization> getPreauthorizationsByid(String id);
  Future<InsurancePreauthorization> putPreauthorizationsByid(
    String id,
    InsurancePreauthorization data,
  );
  Future<InsurancePreauthorization> deletePreauthorizationsByid(String id);
  Future<InsurancePreauthorization> getPreauthorizationsByNumberByauthnumber(
    String authnumber,
  );
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
  });
  Future<List<InsurancePreauthorization>> postPreauthorizations(
    InsurancePreauthorization data,
  );
}
