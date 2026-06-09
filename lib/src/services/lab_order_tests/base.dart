import '../../models/_exports.dart';
abstract class LabOrderTestsService {
  Future<LabOrderTest> resultLabOrderTest(String id, LabOrderTest data);
  Future<LabOrderTest> markAbnormalLabOrderTest(String id, LabOrderTest data);
  Future<LabOrderTest> getLabOrderTestById(String id);
  Future<LabOrderTest> updateLabOrderTest(String id, LabOrderTest data);
  Future<LabOrderTest> deleteLabOrderTest(String id);
  Future<LabOrderTest> getLabOrderBylaborderid(String laborderid);
  Future<List<LabOrderTest>> getLabOrderTests({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<LabOrderTest> createLabOrderTest(LabOrderTest data);
}
