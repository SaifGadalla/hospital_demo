import '../../models/_exports.dart';

abstract class MedicalRecordsService {
  Future<MedicalRecord> getMedicalRecordById(String id);
  Future<MedicalRecord> updateMedicalRecord(String id, MedicalRecord data);
  Future<void> deleteMedicalRecord(String id);
  Future<MedicalRecord> getPatientBypatientid(String patientid);
  Future<List<MedicalRecord>> getMedicalRecords({
    String? searchTerm,
    String? patientId,
    String? doctorId,
    String? appointmentId,
    DateTime? visitDateFrom,
    DateTime? visitDateTo,
    String? diagnosisCode,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<MedicalRecord> createMedicalRecord(MedicalRecord data);
}
