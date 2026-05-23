abstract class MedicalRecordsService {
  Future<dynamic> getMedicalRecordById(String id);
  Future<dynamic> updateMedicalRecord(String id, Map<String, dynamic> data);
  Future<dynamic> deleteMedicalRecord(String id);
  Future<dynamic> getPatientBypatientid(String patientid);
  Future<dynamic> getMedicalRecords([Map<String, dynamic>? queryParams]);
  Future<dynamic> createMedicalRecord(Map<String, dynamic> data);
}
