import 'base.dart';
import '../dio_service.dart';

class RealInsuranceService implements InsuranceService {
  final DioService _dioService;
  RealInsuranceService(this._dioService);

  @override
  Future<dynamic> postClaimsByidSubmit(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/insurance/claims/$id/submit', data: data);
  }

  @override
  Future<dynamic> postClaimsByidApprove(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/insurance/claims/$id/approve', data: data);
  }

  @override
  Future<dynamic> postClaimsByidReject(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/insurance/claims/$id/reject', data: data);
  }

  @override
  Future<dynamic> postClaimsByidPayment(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/insurance/claims/$id/payment', data: data);
  }

  @override
  Future<dynamic> getClaimsByid(String id) async {
    return await _dioService.get('/api/hospital/insurance/claims/$id');
  }

  @override
  Future<dynamic> putClaimsByid(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/insurance/claims/$id', data: data);
  }

  @override
  Future<dynamic> deleteClaimsByid(String id) async {
    return await _dioService.delete('/api/hospital/insurance/claims/$id');
  }

  @override
  Future<dynamic> getClaimsByNumberByclaimnumber(String claimnumber) async {
    return await _dioService.get('/api/hospital/insurance/claims/by-number/$claimnumber');
  }

  @override
  Future<dynamic> claims() async {
    return await _dioService.get('/api/hospital/insurance/claims');
  }

  @override
  Future<dynamic> postClaims(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/insurance/claims', data: data);
  }

  @override
  Future<dynamic> getPlansByid(String id) async {
    return await _dioService.get('/api/hospital/insurance/plans/$id');
  }

  @override
  Future<dynamic> putPlansByid(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/insurance/plans/$id', data: data);
  }

  @override
  Future<dynamic> deletePlansByid(String id) async {
    return await _dioService.delete('/api/hospital/insurance/plans/$id');
  }

  @override
  Future<dynamic> getPlansByCodeBycode(String code) async {
    return await _dioService.get('/api/hospital/insurance/plans/by-code/$code');
  }

  @override
  Future<dynamic> plans() async {
    return await _dioService.get('/api/hospital/insurance/plans');
  }

  @override
  Future<dynamic> postPlans(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/insurance/plans', data: data);
  }

  @override
  Future<dynamic> postPreauthorizationsByidApprove(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/insurance/preauthorizations/$id/approve', data: data);
  }

  @override
  Future<dynamic> postPreauthorizationsByidReject(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/insurance/preauthorizations/$id/reject', data: data);
  }

  @override
  Future<dynamic> getPreauthorizationsByid(String id) async {
    return await _dioService.get('/api/hospital/insurance/preauthorizations/$id');
  }

  @override
  Future<dynamic> putPreauthorizationsByid(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/insurance/preauthorizations/$id', data: data);
  }

  @override
  Future<dynamic> deletePreauthorizationsByid(String id) async {
    return await _dioService.delete('/api/hospital/insurance/preauthorizations/$id');
  }

  @override
  Future<dynamic> getPreauthorizationsByNumberByauthnumber(String authnumber) async {
    return await _dioService.get('/api/hospital/insurance/preauthorizations/by-number/$authnumber');
  }

  @override
  Future<dynamic> preauthorizations() async {
    return await _dioService.get('/api/hospital/insurance/preauthorizations');
  }

  @override
  Future<dynamic> postPreauthorizations(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/insurance/preauthorizations', data: data);
  }

}
