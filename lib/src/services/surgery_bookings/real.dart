import 'base.dart';
import '../dio_service.dart';

class RealSurgeryBookingsService implements SurgeryBookingsService {
  final DioService _dioService;
  RealSurgeryBookingsService(this._dioService);

  @override
  Future<dynamic> cancelSurgeryBooking(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/surgery-bookings/$id/cancel', data: data);
  }

  @override
  Future<dynamic> startSurgeryBooking(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/surgery-bookings/$id/start', data: data);
  }

  @override
  Future<dynamic> completeSurgeryBooking(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/surgery-bookings/$id/complete', data: data);
  }

  @override
  Future<dynamic> teamSurgeryBooking(String id) async {
    return await _dioService.get('/api/hospital/surgery-bookings/$id/team');
  }

  @override
  Future<dynamic> safetyChecklistSurgeryBooking(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/surgery-bookings/$id/safety-checklist/sign-in', data: data);
  }

  @override
  Future<dynamic> postSafetychecklistsurgerybooking(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/surgery-bookings/$id/safety-checklist/time-out', data: data);
  }

  @override
  Future<dynamic> postSafetychecklistsurgerybooking2(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/surgery-bookings/$id/safety-checklist/sign-out', data: data);
  }

  @override
  Future<dynamic> getSafetychecklistsurgerybooking(String id) async {
    return await _dioService.get('/api/hospital/surgery-bookings/$id/safety-checklist');
  }

  @override
  Future<dynamic> surgeryRecordSurgeryBooking(String id) async {
    return await _dioService.get('/api/hospital/surgery-bookings/$id/surgery-record');
  }

  @override
  Future<dynamic> getSurgeryBookingById(String id) async {
    return await _dioService.get('/api/hospital/surgery-bookings/$id');
  }

  @override
  Future<dynamic> updateSurgeryBooking(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/surgery-bookings/$id', data: data);
  }

  @override
  Future<dynamic> book(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/surgery-bookings/book', data: data);
  }

  @override
  Future<dynamic> deleteTeamByteammemberid(String teammemberid) async {
    return await _dioService.delete('/api/hospital/surgery-bookings/team/$teammemberid');
  }

  @override
  Future<dynamic> team(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/surgery-bookings/team', data: data);
  }

  @override
  Future<dynamic> getSurgeryBookings([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/surgery-bookings', queryParameters: queryParams);
  }

}
