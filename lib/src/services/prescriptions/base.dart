abstract class PrescriptionsService {
  Future<dynamic> dispensePrescription(String id, Map<String, dynamic> data);
  Future<dynamic> cancelPrescription(String id, Map<String, dynamic> data);
  Future<dynamic> getPrescriptionById(String id);
  Future<dynamic> updatePrescription(String id, Map<String, dynamic> data);
  Future<dynamic> deletePrescription(String id);
  Future<dynamic> getPrescriptionsNumber(String prescriptionnumber);
  Future<dynamic> getPatientBypatientid(String patientid);
  Future<dynamic> getPrescriptions([Map<String, dynamic>? queryParams]);
  Future<dynamic> createPrescription(Map<String, dynamic> data);
}
