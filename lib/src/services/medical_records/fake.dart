import 'base.dart';

class FakeMedicalRecordsService implements MedicalRecordsService {
  final List<Map<String, dynamic>> _data = [];

  @override
  Future<dynamic> getMedicalRecordById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> updateMedicalRecord(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> deleteMedicalRecord(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'success': true};
  }

  @override
  Future<dynamic> getPatientBypatientid(String patientid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> getMedicalRecords([Map<String, dynamic>? queryParams]) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<dynamic> createMedicalRecord(Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

}
