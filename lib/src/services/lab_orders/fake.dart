import '../../models/_exports.dart';
import 'base.dart';

class FakeLabOrdersService implements LabOrdersService {
  final List<LabOrder> _data = [];

  @override
  Future<LabOrder> statusLabOrder(String id, LabOrder data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<LabOrder> collectSampleLabOrder(String id, LabOrder data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<LabOrder> approveResultsLabOrder(String id, LabOrder data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<LabOrder> getLabOrderById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return LabOrder();
  }

  @override
  Future<LabOrder> updateLabOrder(String id, LabOrder data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<LabOrder> deleteLabOrder(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return LabOrder();
  }

  @override
  Future<LabOrder> getLabOrdersNumber(String ordernumber) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return LabOrder();
  }

  @override
  Future<LabOrder> getPatientBypatientid(String patientid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return LabOrder();
  }

  @override
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
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<LabOrder> createLabOrder(LabOrder data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

}
