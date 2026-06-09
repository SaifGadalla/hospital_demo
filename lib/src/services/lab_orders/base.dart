import '../../models/_exports.dart';
abstract class LabOrdersService {
  Future<LabOrder> statusLabOrder(String id, LabOrder data);
  Future<LabOrder> collectSampleLabOrder(String id, LabOrder data);
  Future<LabOrder> approveResultsLabOrder(String id, LabOrder data);
  Future<LabOrder> getLabOrderById(String id);
  Future<LabOrder> updateLabOrder(String id, LabOrder data);
  Future<LabOrder> deleteLabOrder(String id);
  Future<LabOrder> getLabOrdersNumber(String ordernumber);
  Future<LabOrder> getPatientBypatientid(String patientid);
  Future<List<LabOrder>> getLabOrders({
    String? searchTerm,
    String? patientId,
    String? doctorId,
    String? appointmentId,
    String? priority,
    String? status,
    DateTime? orderDateFrom,
    DateTime? orderDateTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<LabOrder> createLabOrder(LabOrder data);
}
