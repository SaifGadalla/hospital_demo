import 'base.dart';
import '../dio_service.dart';

class RealMedicalRecordsService implements MedicalRecordsService {
  final DioService _dioService;
  RealMedicalRecordsService(this._dioService);

  @override
  Future<dynamic> getMedicalRecordById(String id) async {
    return await _dioService.get('/api/hospital/medical-records/$id');
  }

  @override
  Future<dynamic> updateMedicalRecord(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/medical-records/$id', data: data);
  }

  @override
  Future<dynamic> deleteMedicalRecord(String id) async {
    return await _dioService.delete('/api/hospital/medical-records/$id');
  }

  @override
  Future<dynamic> getPatientBypatientid(String patientid) async {
    return await _dioService.get('/api/hospital/medical-records/patient/$patientid');
  }

  @override
  Future<dynamic> getMedicalRecords([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/medical-records', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createMedicalRecord(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/medical-records', data: data);
  }

}
