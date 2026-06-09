import '../../../common.dart';

class RealAppointmentsService implements AppointmentsService {
  final DioService _dioService;
  RealAppointmentsService(this._dioService);

  @override
  Future<Appointment> checkInAppointment(String id, Appointment data) async {
    final response = await _dioService.post(
      '/api/hospital/appointments/$id/check-in',
      data: data.toJson(),
    );
    return Appointment.fromJson(response.data);
  }

  @override
  Future<Appointment> checkOutAppointment(String id, Appointment data) async {
    final response = await _dioService.post(
      '/api/hospital/appointments/$id/check-out',
      data: data.toJson(),
    );
    return Appointment.fromJson(response.data);
  }

  @override
  Future<Appointment> cancelAppointment(String id, Appointment data) async {
    final response = await _dioService.post(
      '/api/hospital/appointments/$id/cancel',
      data: data.toJson(),
    );
    return Appointment.fromJson(response.data);
  }

  @override
  Future<Appointment> getAppointmentById(String id) async {
    final response = await _dioService.get('/api/hospital/appointments/$id');
    return Appointment.fromJson(response.data);
  }

  @override
  Future<Appointment> updateAppointment(String id, Appointment data) async {
    final response = await _dioService.put(
      '/api/hospital/appointments/$id',
      data: data.toJson(),
    );
    return Appointment.fromJson(response.data);
  }

  @override
  Future<void> deleteAppointment(String id) async {
    await _dioService.delete('/api/hospital/appointments/$id');
  }

  @override
  Future<Appointment> getAppointmentByNumber(String appointmentnumber) async {
    final response = await _dioService.get(
      '/api/hospital/appointments/by-number/$appointmentnumber',
    );
    return Appointment.fromJson(response.data);
  }

  @override
  Future<Appointment> getAppointmentByPatientId(String patientid) async {
    final response = await _dioService.get(
      '/api/hospital/appointments/by-patient/$patientid',
    );
    return Appointment.fromJson(response.data);
  }

  @override
  Future<Appointment> getAppointmentByDoctorId(
    String doctorid, {
    DateTime? date,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/appointments/by-doctor/$doctorid',
      queryParameters: {if (date != null) 'date': formatDateTimeToUtcIso(date)},
    );
    return Appointment.fromJson(response.data);
  }

  @override
  Future<Appointment> checkAvailability({
    String? doctorId,
    DateTime? appointmentDate,
    TimeOfDay? startTime,
    int? durationMinutes,
    String? excludeAppointmentId,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/appointments/check-availability',
      queryParameters: {
        if (doctorId != null) 'doctorId': doctorId,
        if (appointmentDate != null)
          'appointmentDate': formatDateTimeToUtcIso(appointmentDate),
        if (startTime != null) 'startTime': startTime,
        if (durationMinutes != null) 'durationMinutes': durationMinutes,
        if (excludeAppointmentId != null)
          'excludeAppointmentId': excludeAppointmentId,
      },
    );
    return Appointment.fromJson(response.data);
  }

  @override
  Future<List<Appointment>> getAppointments({
    String? searchTerm,
    String? patientId,
    String? doctorId,
    String? departmentId,
    String? appointmentType,
    String? status,
    DateTime? appointmentDateFrom,
    DateTime? appointmentDateTo,
    bool? requiresFollowUp,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/appointments',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (patientId != null) 'patientId': patientId,
        if (doctorId != null) 'doctorId': doctorId,
        if (departmentId != null) 'departmentId': departmentId,
        if (appointmentType != null) 'appointmentType': appointmentType,
        if (status != null) 'status': status,
        if (appointmentDateFrom != null)
          'appointmentDateFrom': formatDateTimeToUtcIso(appointmentDateFrom),
        if (appointmentDateTo != null)
          'appointmentDateTo': formatDateTimeToUtcIso(appointmentDateTo),
        if (requiresFollowUp != null) 'requiresFollowUp': requiresFollowUp,
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<Appointment>((json) => Appointment.fromJson(json))
        .toList();
  }

  @override
  Future<Appointment> createAppointment(Appointment data) async {
    final response = await _dioService.post(
      '/api/hospital/appointments',
      data: data.toJson(),
    );
    return Appointment.fromJson(response.data);
  }

  @override
  Future<int> getAppointmentsTotalCount({
    String? searchTerm,
    String? patientId,
    String? doctorId,
    String? departmentId,
    String? appointmentType,
    String? status,
    DateTime? appointmentDateFrom,
    DateTime? appointmentDateTo,
    bool? requiresFollowUp,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/appointments',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (patientId != null) 'patientId': patientId,
        if (doctorId != null) 'doctorId': doctorId,
        if (departmentId != null) 'departmentId': departmentId,
        if (appointmentType != null) 'appointmentType': appointmentType,
        if (status != null) 'status': status,
        if (appointmentDateFrom != null)
          'appointmentDateFrom': formatDateTimeToUtcIso(appointmentDateFrom),
        if (appointmentDateTo != null)
          'appointmentDateTo': formatDateTimeToUtcIso(appointmentDateTo),
        if (requiresFollowUp != null) 'requiresFollowUp': requiresFollowUp,
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['totalCount'] as int;
  }
}
