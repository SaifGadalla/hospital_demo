import 'base.dart';
import '../dio_service.dart';

class RealMedicationAdministrationsService implements MedicationAdministrationsService {
  final DioService _dioService;
  RealMedicationAdministrationsService(this._dioService);

  @override
  Future<dynamic> administeredMedicationAdministration(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/medication-administrations/$id/administered', data: data);
  }

  @override
  Future<dynamic> missedMedicationAdministration(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/medication-administrations/$id/missed', data: data);
  }

  @override
  Future<dynamic> getMedicationAdministrationById(String id) async {
    return await _dioService.get('/api/hospital/medication-administrations/$id');
  }

  @override
  Future<dynamic> getMedicationAdministrationsAdmission(String admissionid) async {
    return await _dioService.get('/api/hospital/medication-administrations/by-admission/$admissionid');
  }

  @override
  Future<dynamic> schedule(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/medication-administrations/schedule', data: data);
  }

}
