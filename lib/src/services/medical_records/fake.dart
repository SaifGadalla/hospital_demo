import '../../models/_exports.dart';
import 'base.dart';

class FakeMedicalRecordsService implements MedicalRecordsService {
  final List<MedicalRecord> _data = [];

  @override
  Future<MedicalRecord> getMedicalRecordById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return MedicalRecord();
  }

  @override
  Future<MedicalRecord> updateMedicalRecord(
    String id,
    MedicalRecord data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<void> deleteMedicalRecord(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<MedicalRecord> getPatientBypatientid(String patientid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return MedicalRecord();
  }

  @override
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
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<MedicalRecord> createMedicalRecord(MedicalRecord data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }
}
