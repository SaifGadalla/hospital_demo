import 'base.dart';

class FakePrescriptionsService implements PrescriptionsService {
  final List<Map<String, dynamic>> _data = [];

  @override
  Future<dynamic> dispensePrescription(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> cancelPrescription(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> getPrescriptionById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> updatePrescription(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> deletePrescription(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'success': true};
  }

  @override
  Future<dynamic> getPrescriptionsNumber(String prescriptionnumber) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> getPatientBypatientid(String patientid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> getPrescriptions([Map<String, dynamic>? queryParams]) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<dynamic> createPrescription(Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

}
