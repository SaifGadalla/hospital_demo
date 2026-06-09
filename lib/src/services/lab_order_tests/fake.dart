import '../../models/_exports.dart';
import 'base.dart';

class FakeLabOrderTestsService implements LabOrderTestsService {
  final List<LabOrderTest> _data = [];

  @override
  Future<LabOrderTest> resultLabOrderTest(String id, LabOrderTest data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<LabOrderTest> markAbnormalLabOrderTest(String id, LabOrderTest data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<LabOrderTest> getLabOrderTestById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return LabOrderTest();
  }

  @override
  Future<LabOrderTest> updateLabOrderTest(String id, LabOrderTest data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<LabOrderTest> deleteLabOrderTest(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return LabOrderTest();
  }

  @override
  Future<LabOrderTest> getLabOrderBylaborderid(String laborderid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return LabOrderTest();
  }

  @override
  Future<List<LabOrderTest>> getLabOrderTests({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<LabOrderTest> createLabOrderTest(LabOrderTest data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

}
