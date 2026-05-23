abstract class PatientsService {
  Future<dynamic> getPatientById(String id);
  Future<dynamic> updatePatient(String id, Map<String, dynamic> data);
  Future<dynamic> deletePatient(String id);
  Future<dynamic> getPatientsMrn(String mrn);
  Future<dynamic> getCheckMrnBymrn(String mrn);
  Future<dynamic> getCheckEmailByemail(String email);
  Future<dynamic> getCheckNationalidBynationalid(String nationalid);
  Future<dynamic> getPatients([Map<String, dynamic>? queryParams]);
  Future<dynamic> createPatient(Map<String, dynamic> data);
}
