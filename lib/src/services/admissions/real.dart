import 'base.dart';
import '../dio_service.dart';

class RealAdmissionsService implements AdmissionsService {
  final DioService _dioService;
  RealAdmissionsService(this._dioService);

  @override
  Future<dynamic> transferAdmission(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/admissions/$id/transfer', data: data);
  }

  @override
  Future<dynamic> dischargeAdmission(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/admissions/$id/discharge', data: data);
  }

  @override
  Future<dynamic> getAdmissionById(String id) async {
    return await _dioService.get('/api/hospital/admissions/$id');
  }

  @override
  Future<dynamic> updateAdmission(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/admissions/$id', data: data);
  }

  @override
  Future<dynamic> deleteAdmission(String id) async {
    return await _dioService.delete('/api/hospital/admissions/$id');
  }

  @override
  Future<dynamic> getAdmissionsNumber(String number) async {
    return await _dioService.get('/api/hospital/admissions/by-number/$number');
  }

  @override
  Future<dynamic> admit(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/admissions/admit', data: data);
  }

  @override
  Future<dynamic> getAdmissions([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/admissions', queryParameters: queryParams);
  }

}
