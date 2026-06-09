import '../../../common.dart';

abstract class AdmissionsService {
  Future<Admission> transferAdmission(String id, Admission data);
  Future<Admission> dischargeAdmission(String id, Admission data);
  Future<Admission> getAdmissionById(String id);
  Future<Admission> updateAdmission(String id, Admission data);
  Future<void> deleteAdmission(String id);
  Future<Admission> getAdmissionByNumber(String number);
  Future<Admission> admit(Admission data);
  Future<List<Admission>> getAdmissions({
    String? searchTerm,
    String? patientId,
    String? doctorId,
    String? departmentId,
    String? wardId,
    String? status,
    String? type,
    DateTime? fromDate,
    DateTime? toDate,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
}
