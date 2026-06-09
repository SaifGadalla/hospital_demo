import '../../models/_exports.dart';
import 'base.dart';

class FakeAdmissionsService implements AdmissionsService {
  final List<Admission> _data = [
    Admission(
      id: '1',
      tenantId: '1',
      admissionNumber: 'ADM-001',
      patientId: 'PAT-001',
      patientName: 'John Doe',
      patientMRN: 'MRN-001',
      doctorId: 'DOC-001',
      departmentId: 'DEPT-001',
      admissionDate: DateTime.now(),
      dischargeDate: DateTime.now(),
      admissionType: 'Inpatient',
      bedId: 'BED-001',
      bedNumber: 'BED-001',
      roomId: 'ROOM-001',
      roomNumber: 'ROOM-001',
      admissionDiagnosis: 'Pneumonia',
      dischargeDiagnosis: 'Pneumonia',
      status: 'Admitted',
      notes: 'Patient admitted for pneumonia',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];

  @override
  Future<Admission> transferAdmission(String id, Admission data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<Admission> dischargeAdmission(String id, Admission data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<Admission> getAdmissionById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.firstWhere((e) => e.id == id);
  }

  @override
  Future<Admission> updateAdmission(String id, Admission data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _data.indexWhere((e) => e.id == id);
    if (index != -1) {
      _data[index] = data;
    }
    return data;
  }

  @override
  Future<void> deleteAdmission(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.removeWhere((e) => e.id == id);
  }

  @override
  Future<Admission> getAdmissionByNumber(String number) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.firstWhere((e) => e.admissionNumber == number);
  }

  @override
  Future<Admission> admit(Admission data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
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
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }
}
