import 'base.dart';
import '../dio_service.dart';

class RealPatientsService implements PatientsService {
  final DioService _dioService;
  RealPatientsService(this._dioService);

  @override
  Future<dynamic> getPatientById(String id) async {
    return await _dioService.get('/api/hospital/patients/$id');
  }

  @override
  Future<dynamic> updatePatient(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/patients/$id', data: data);
  }

  @override
  Future<dynamic> deletePatient(String id) async {
    return await _dioService.delete('/api/hospital/patients/$id');
  }

  @override
  Future<dynamic> getPatientsMrn(String mrn) async {
    return await _dioService.get('/api/hospital/patients/by-mrn/$mrn');
  }

  @override
  Future<dynamic> getCheckMrnBymrn(String mrn) async {
    return await _dioService.get('/api/hospital/patients/check-mrn/$mrn');
  }

  @override
  Future<dynamic> getCheckEmailByemail(String email) async {
    return await _dioService.get('/api/hospital/patients/check-email/$email');
  }

  @override
  Future<dynamic> getCheckNationalidBynationalid(String nationalid) async {
    return await _dioService.get('/api/hospital/patients/check-nationalid/$nationalid');
  }

  @override
  Future<dynamic> getPatients([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/patients', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createPatient(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/patients', data: data);
  }

}
