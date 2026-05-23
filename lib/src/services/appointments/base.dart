abstract class AppointmentsService {
  Future<dynamic> checkInAppointment(String id, Map<String, dynamic> data);
  Future<dynamic> checkOutAppointment(String id, Map<String, dynamic> data);
  Future<dynamic> cancelAppointment(String id, Map<String, dynamic> data);
  Future<dynamic> getAppointmentById(String id);
  Future<dynamic> updateAppointment(String id, Map<String, dynamic> data);
  Future<dynamic> deleteAppointment(String id);
  Future<dynamic> getAppointmentsNumber(String appointmentnumber);
  Future<dynamic> getAppointmentsPatient(String patientid);
  Future<dynamic> getAppointmentsDoctor(String doctorid);
  Future<dynamic> checkAvailability();
  Future<dynamic> getAppointments([Map<String, dynamic>? queryParams]);
  Future<dynamic> createAppointment(Map<String, dynamic> data);
}
