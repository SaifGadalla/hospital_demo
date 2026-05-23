import 'base.dart';
import '../dio_service.dart';

class RealErService implements ErService {
  final DioService _dioService;
  RealErService(this._dioService);

  @override
  Future<dynamic> postAmbulanceCallsByidPickup(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/ambulance-calls/$id/pickup', data: data);
  }

  @override
  Future<dynamic> postAmbulanceCallsByidArrival(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/ambulance-calls/$id/arrival', data: data);
  }

  @override
  Future<dynamic> postAmbulanceCallsByidLinkErByerregistrationid(String id, String erregistrationid, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/ambulance-calls/$id/link-er/$erregistrationid', data: data);
  }

  @override
  Future<dynamic> getAmbulanceCallsByid(String id) async {
    return await _dioService.get('/api/hospital/er/ambulance-calls/$id');
  }

  @override
  Future<dynamic> ambulanceCalls() async {
    return await _dioService.get('/api/hospital/er/ambulance-calls');
  }

  @override
  Future<dynamic> postAmbulancecalls(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/ambulance-calls', data: data);
  }

  @override
  Future<dynamic> getBedsAvailable() async {
    return await _dioService.get('/api/hospital/er/beds/available');
  }

  @override
  Future<dynamic> postBedsByidStatus(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/beds/$id/status', data: data);
  }

  @override
  Future<dynamic> getBedsByid(String id) async {
    return await _dioService.get('/api/hospital/er/beds/$id');
  }

  @override
  Future<dynamic> putBedsByid(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/er/beds/$id', data: data);
  }

  @override
  Future<dynamic> beds() async {
    return await _dioService.get('/api/hospital/er/beds');
  }

  @override
  Future<dynamic> postBeds(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/beds', data: data);
  }

  @override
  Future<dynamic> postRegistrationsByidDisposition(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/registrations/$id/disposition', data: data);
  }

  @override
  Future<dynamic> getRegistrationsByid(String id) async {
    return await _dioService.get('/api/hospital/er/registrations/$id');
  }

  @override
  Future<dynamic> putRegistrationsByid(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/er/registrations/$id', data: data);
  }

  @override
  Future<dynamic> deleteRegistrationsByid(String id) async {
    return await _dioService.delete('/api/hospital/er/registrations/$id');
  }

  @override
  Future<dynamic> getRegistrationsByNumberByernumber(String ernumber) async {
    return await _dioService.get('/api/hospital/er/registrations/by-number/$ernumber');
  }

  @override
  Future<dynamic> postRegistrationsRegister(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/registrations/register', data: data);
  }

  @override
  Future<dynamic> registrations() async {
    return await _dioService.get('/api/hospital/er/registrations');
  }

  @override
  Future<dynamic> postTreatmentsByidComplete(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/treatments/$id/complete', data: data);
  }

  @override
  Future<dynamic> getTreatmentsByid(String id) async {
    return await _dioService.get('/api/hospital/er/treatments/$id');
  }

  @override
  Future<dynamic> getTreatmentsByRegistrationByregistrationid(String registrationid) async {
    return await _dioService.get('/api/hospital/er/treatments/by-registration/$registrationid');
  }

  @override
  Future<dynamic> postTreatmentsStart(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/treatments/start', data: data);
  }

  @override
  Future<dynamic> treatments() async {
    return await _dioService.get('/api/hospital/er/treatments');
  }

  @override
  Future<dynamic> getTriagesByid(String id) async {
    return await _dioService.get('/api/hospital/er/triages/$id');
  }

  @override
  Future<dynamic> getTriagesByRegistrationByregistrationid(String registrationid) async {
    return await _dioService.get('/api/hospital/er/triages/by-registration/$registrationid');
  }

  @override
  Future<dynamic> triages() async {
    return await _dioService.get('/api/hospital/er/triages');
  }

  @override
  Future<dynamic> postTriages(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/er/triages', data: data);
  }

}
