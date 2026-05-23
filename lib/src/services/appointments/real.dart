import 'base.dart';
import '../dio_service.dart';

class RealAppointmentsService implements AppointmentsService {
  final DioService _dioService;
  RealAppointmentsService(this._dioService);

  @override
  Future<dynamic> checkInAppointment(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/appointments/$id/check-in', data: data);
  }

  @override
  Future<dynamic> checkOutAppointment(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/appointments/$id/check-out', data: data);
  }

  @override
  Future<dynamic> cancelAppointment(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/appointments/$id/cancel', data: data);
  }

  @override
  Future<dynamic> getAppointmentById(String id) async {
    return await _dioService.get('/api/hospital/appointments/$id');
  }

  @override
  Future<dynamic> updateAppointment(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/appointments/$id', data: data);
  }

  @override
  Future<dynamic> deleteAppointment(String id) async {
    return await _dioService.delete('/api/hospital/appointments/$id');
  }

  @override
  Future<dynamic> getAppointmentsNumber(String appointmentnumber) async {
    return await _dioService.get('/api/hospital/appointments/by-number/$appointmentnumber');
  }

  @override
  Future<dynamic> getAppointmentsPatient(String patientid) async {
    return await _dioService.get('/api/hospital/appointments/by-patient/$patientid');
  }

  @override
  Future<dynamic> getAppointmentsDoctor(String doctorid) async {
    return await _dioService.get('/api/hospital/appointments/by-doctor/$doctorid');
  }

  @override
  Future<dynamic> checkAvailability() async {
    return await _dioService.get('/api/hospital/appointments/check-availability');
  }

  @override
  Future<dynamic> getAppointments([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/appointments', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createAppointment(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/appointments', data: data);
  }

}
