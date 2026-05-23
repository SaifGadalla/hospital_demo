abstract class LabOrdersService {
  Future<dynamic> statusLabOrder(String id, Map<String, dynamic> data);
  Future<dynamic> collectSampleLabOrder(String id, Map<String, dynamic> data);
  Future<dynamic> approveResultsLabOrder(String id, Map<String, dynamic> data);
  Future<dynamic> getLabOrderById(String id);
  Future<dynamic> updateLabOrder(String id, Map<String, dynamic> data);
  Future<dynamic> deleteLabOrder(String id);
  Future<dynamic> getLabOrdersNumber(String ordernumber);
  Future<dynamic> getPatientBypatientid(String patientid);
  Future<dynamic> getLabOrders([Map<String, dynamic>? queryParams]);
  Future<dynamic> createLabOrder(Map<String, dynamic> data);
}
