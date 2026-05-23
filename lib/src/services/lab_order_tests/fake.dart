import 'base.dart';

class FakeLabOrderTestsService implements LabOrderTestsService {
  final List<Map<String, dynamic>> _data = [];

  @override
  Future<dynamic> resultLabOrderTest(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> markAbnormalLabOrderTest(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> getLabOrderTestById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> updateLabOrderTest(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> deleteLabOrderTest(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'success': true};
  }

  @override
  Future<dynamic> getLabOrderBylaborderid(String laborderid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> getLabOrderTests([Map<String, dynamic>? queryParams]) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<dynamic> createLabOrderTest(Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

}
