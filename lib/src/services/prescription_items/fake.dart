import 'base.dart';

class FakePrescriptionItemsService implements PrescriptionItemsService {
  final List<Map<String, dynamic>> _data = [];

  @override
  Future<dynamic> dispensePrescriptionItem(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> getPrescriptionItemById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> updatePrescriptionItem(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> deletePrescriptionItem(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'success': true};
  }

  @override
  Future<dynamic> getPrescriptionByprescriptionid(String prescriptionid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> getPrescriptionItems([Map<String, dynamic>? queryParams]) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<dynamic> createPrescriptionItem(Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

}
