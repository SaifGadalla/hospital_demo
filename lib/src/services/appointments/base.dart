import 'package:hospital_demo/common.dart';

abstract class AppointmentsService {
  Future<Appointment> checkInAppointment(String id, Appointment data);
  Future<Appointment> checkOutAppointment(String id, Appointment data);
  Future<Appointment> cancelAppointment(String id, Appointment data);
  Future<Appointment> getAppointmentById(String id);
  Future<Appointment> updateAppointment(String id, Appointment data);
  Future<void> deleteAppointment(String id);
  Future<Appointment> getAppointmentByNumber(String appointmentnumber);
  Future<Appointment> getAppointmentByPatientId(String patientid);
  Future<Appointment> getAppointmentByDoctorId(
    String doctorid, {
    DateTime? date,
  });
  Future<Appointment> checkAvailability({
    String? doctorId,
    DateTime? appointmentDate,
    TimeOfDay? startTime,
    int? durationMinutes,
    String? excludeAppointmentId,
  });
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
  });
  Future<Appointment> createAppointment(Appointment data);
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
  });
}
