abstract class LabOrderTestsService {
  Future<dynamic> resultLabOrderTest(String id, Map<String, dynamic> data);
  Future<dynamic> markAbnormalLabOrderTest(String id, Map<String, dynamic> data);
  Future<dynamic> getLabOrderTestById(String id);
  Future<dynamic> updateLabOrderTest(String id, Map<String, dynamic> data);
  Future<dynamic> deleteLabOrderTest(String id);
  Future<dynamic> getLabOrderBylaborderid(String laborderid);
  Future<dynamic> getLabOrderTests([Map<String, dynamic>? queryParams]);
  Future<dynamic> createLabOrderTest(Map<String, dynamic> data);
}
