import 'base.dart';
import '../dio_service.dart';

class RealPrescriptionsService implements PrescriptionsService {
  final DioService _dioService;
  RealPrescriptionsService(this._dioService);

  @override
  Future<dynamic> dispensePrescription(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/prescriptions/$id/dispense', data: data);
  }

  @override
  Future<dynamic> cancelPrescription(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/prescriptions/$id/cancel', data: data);
  }

  @override
  Future<dynamic> getPrescriptionById(String id) async {
    return await _dioService.get('/api/hospital/prescriptions/$id');
  }

  @override
  Future<dynamic> updatePrescription(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/prescriptions/$id', data: data);
  }

  @override
  Future<dynamic> deletePrescription(String id) async {
    return await _dioService.delete('/api/hospital/prescriptions/$id');
  }

  @override
  Future<dynamic> getPrescriptionsNumber(String prescriptionnumber) async {
    return await _dioService.get('/api/hospital/prescriptions/by-number/$prescriptionnumber');
  }

  @override
  Future<dynamic> getPatientBypatientid(String patientid) async {
    return await _dioService.get('/api/hospital/prescriptions/patient/$patientid');
  }

  @override
  Future<dynamic> getPrescriptions([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/prescriptions', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createPrescription(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/prescriptions', data: data);
  }

}
