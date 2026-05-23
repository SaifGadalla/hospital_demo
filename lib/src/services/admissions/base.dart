abstract class AdmissionsService {
  Future<dynamic> transferAdmission(String id, Map<String, dynamic> data);
  Future<dynamic> dischargeAdmission(String id, Map<String, dynamic> data);
  Future<dynamic> getAdmissionById(String id);
  Future<dynamic> updateAdmission(String id, Map<String, dynamic> data);
  Future<dynamic> deleteAdmission(String id);
  Future<dynamic> getAdmissionsNumber(String number);
  Future<dynamic> admit(Map<String, dynamic> data);
  Future<dynamic> getAdmissions([Map<String, dynamic>? queryParams]);
}
