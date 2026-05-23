abstract class InsuranceService {
  Future<dynamic> postClaimsByidSubmit(String id, Map<String, dynamic> data);
  Future<dynamic> postClaimsByidApprove(String id, Map<String, dynamic> data);
  Future<dynamic> postClaimsByidReject(String id, Map<String, dynamic> data);
  Future<dynamic> postClaimsByidPayment(String id, Map<String, dynamic> data);
  Future<dynamic> getClaimsByid(String id);
  Future<dynamic> putClaimsByid(String id, Map<String, dynamic> data);
  Future<dynamic> deleteClaimsByid(String id);
  Future<dynamic> getClaimsByNumberByclaimnumber(String claimnumber);
  Future<dynamic> claims();
  Future<dynamic> postClaims(Map<String, dynamic> data);
  Future<dynamic> getPlansByid(String id);
  Future<dynamic> putPlansByid(String id, Map<String, dynamic> data);
  Future<dynamic> deletePlansByid(String id);
  Future<dynamic> getPlansByCodeBycode(String code);
  Future<dynamic> plans();
  Future<dynamic> postPlans(Map<String, dynamic> data);
  Future<dynamic> postPreauthorizationsByidApprove(String id, Map<String, dynamic> data);
  Future<dynamic> postPreauthorizationsByidReject(String id, Map<String, dynamic> data);
  Future<dynamic> getPreauthorizationsByid(String id);
  Future<dynamic> putPreauthorizationsByid(String id, Map<String, dynamic> data);
  Future<dynamic> deletePreauthorizationsByid(String id);
  Future<dynamic> getPreauthorizationsByNumberByauthnumber(String authnumber);
  Future<dynamic> preauthorizations();
  Future<dynamic> postPreauthorizations(Map<String, dynamic> data);
}
