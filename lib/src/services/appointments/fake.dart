import '../../../common.dart';

class FakeAppointmentsService implements AppointmentsService {
  final List<Appointment> _data = [
    Appointment(
      id: "1",
      tenantId: "1",
      appointmentNumber: "1",
      patientId: "1",
      patientName: "Patient 1",
      patientMRN: "MRN 1",
      doctorId: "1",
      departmentId: "1",
      appointmentDate: DateTime.now(),
      startTime: DateTime.now(),
      durationMinutes: 30,
      endTime: "endTime 1",
      appointmentType: "Routine Checkup",
      status: "Scheduled",
      chiefComplaint: "Chest pain",
      notes: "Notes 1",
      checkInTime: DateTime.now(),
      checkOutTime: DateTime.now(),
      requiresFollowUp: true,
      followUpDate: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Appointment(
      id: "2",
      tenantId: "2",
      appointmentNumber: "2",
      patientId: "2",
      patientName: "Patient 2",
      patientMRN: "MRN 2",
      doctorId: "2",
      departmentId: "2",
      appointmentDate: DateTime.now(),
      startTime: DateTime.now(),
      durationMinutes: 30,
      endTime: "endTime 2",
      appointmentType: "Routine Checkup",
      status: "Scheduled",
      chiefComplaint: "Chest pain",
      notes: "Notes 2",
      checkInTime: DateTime.now(),
      checkOutTime: DateTime.now(),
      requiresFollowUp: true,
      followUpDate: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Appointment(
      id: "3",
      tenantId: "3",
      appointmentNumber: "3",
      patientId: "3",
      patientName: "Patient 3",
      patientMRN: "MRN 3",
      doctorId: "3",
      departmentId: "3",
      appointmentDate: DateTime.now(),
      startTime: DateTime.now(),
      durationMinutes: 30,
      endTime: "endTime 3",
      appointmentType: "Routine Checkup",
      status: "Scheduled",
      chiefComplaint: "Chest pain",
      notes: "Notes 3",
      checkInTime: DateTime.now(),
      checkOutTime: DateTime.now(),
      requiresFollowUp: true,
      followUpDate: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];

  @override
  Future<Appointment> checkInAppointment(String id, Appointment data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<Appointment> checkOutAppointment(String id, Appointment data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<Appointment> cancelAppointment(String id, Appointment data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<Appointment> getAppointmentById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.firstWhere((element) => element.id == id);
  }

  @override
  Future<Appointment> updateAppointment(String id, Appointment data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _data.indexWhere((e) => e.id == id);
    if (index != -1) {
      _data[index] = data;
    }
    return data;
  }

  @override
  Future<void> deleteAppointment(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.removeWhere((e) => e.id == id);
  }

  @override
  Future<Appointment> getAppointmentByNumber(String appointmentnumber) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.firstWhere((e) => e.appointmentNumber == appointmentnumber);
  }

  @override
  Future<Appointment> getAppointmentByPatientId(String patientid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.firstWhere((e) => e.patientId == patientid);
  }

  @override
  Future<Appointment> getAppointmentByDoctorId(
    String doctorid, {
    DateTime? date,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.firstWhere((e) => e.doctorId == doctorid);
  }

  @override
  Future<Appointment> checkAvailability({
    String? doctorId,
    DateTime? appointmentDate,
    TimeOfDay? startTime,
    int? durationMinutes,
    String? excludeAppointmentId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Appointment();
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
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<Appointment> createAppointment(Appointment data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
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
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.length;
  }
}
