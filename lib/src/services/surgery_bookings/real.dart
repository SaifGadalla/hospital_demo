import '../../../common.dart';

class RealSurgeryBookingsService implements SurgeryBookingsService {
  final DioService _dioService;
  RealSurgeryBookingsService(this._dioService);

  @override
  Future<SurgeryBooking> cancelSurgeryBooking(
    String id,
    SurgeryBooking data, {
    String? reason,
  }) async {
    final response = await _dioService.post(
      '/api/hospital/surgery-bookings/$id/cancel',
      data: data.toJson(),
      queryParameters: {if (reason != null) 'reason': reason},
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> startSurgeryBooking(
    String id,
    SurgeryBooking data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/surgery-bookings/$id/start',
      data: data.toJson(),
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> completeSurgeryBooking(
    String id,
    SurgeryBooking data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/surgery-bookings/$id/complete',
      data: data.toJson(),
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> teamSurgeryBooking(String id) async {
    final response = await _dioService.get(
      '/api/hospital/surgery-bookings/$id/team',
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> safetyChecklistSurgeryBooking(
    String id,
    SurgeryBooking data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/surgery-bookings/$id/safety-checklist/sign-in',
      data: data.toJson(),
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> postSafetychecklistsurgerybooking(
    String id,
    SurgeryBooking data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/surgery-bookings/$id/safety-checklist/time-out',
      data: data.toJson(),
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> postSafetychecklistsurgerybooking2(
    String id,
    SurgeryBooking data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/surgery-bookings/$id/safety-checklist/sign-out',
      data: data.toJson(),
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> getSafetychecklistsurgerybooking(String id) async {
    final response = await _dioService.get(
      '/api/hospital/surgery-bookings/$id/safety-checklist',
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> surgeryRecordSurgeryBooking(String id) async {
    final response = await _dioService.get(
      '/api/hospital/surgery-bookings/$id/surgery-record',
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> getSurgeryBookingById(String id) async {
    final response = await _dioService.get(
      '/api/hospital/surgery-bookings/$id',
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> updateSurgeryBooking(
    String id,
    SurgeryBooking data,
  ) async {
    final response = await _dioService.put(
      '/api/hospital/surgery-bookings/$id',
      data: data.toJson(),
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> book(SurgeryBooking data) async {
    final response = await _dioService.post(
      '/api/hospital/surgery-bookings/book',
      data: data.toJson(),
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> deleteTeamByteammemberid(String teammemberid) async {
    final response = await _dioService.delete(
      '/api/hospital/surgery-bookings/team/$teammemberid',
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<SurgeryBooking> team(SurgeryBooking data) async {
    final response = await _dioService.post(
      '/api/hospital/surgery-bookings/team',
      data: data.toJson(),
    );
    return SurgeryBooking.fromJson(response.data);
  }

  @override
  Future<List<SurgeryBooking>> getSurgeryBookings({
    String? searchTerm,
    String? patientId,
    String? primarySurgeonId,
    String? operatingRoomId,
    String? priority,
    String? status,
    DateTime? scheduledFrom,
    DateTime? scheduledTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/surgery-bookings',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (patientId != null) 'patientId': patientId,
        if (primarySurgeonId != null) 'primarySurgeonId': primarySurgeonId,
        if (operatingRoomId != null) 'operatingRoomId': operatingRoomId,
        if (priority != null) 'priority': priority,
        if (status != null) 'status': status,
        if (scheduledFrom != null)
          'scheduledFrom': formatDateTimeToUtcIso(scheduledFrom),
        if (scheduledTo != null)
          'scheduledTo': formatDateTimeToUtcIso(scheduledTo),
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<SurgeryBooking>((e) => SurgeryBooking.fromJson(e))
        .toList();
  }
}
