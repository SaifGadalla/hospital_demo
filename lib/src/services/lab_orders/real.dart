import 'base.dart';
import '../dio_service.dart';

class RealLabOrdersService implements LabOrdersService {
  final DioService _dioService;
  RealLabOrdersService(this._dioService);

  @override
  Future<dynamic> statusLabOrder(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/lab-orders/$id/status', data: data);
  }

  @override
  Future<dynamic> collectSampleLabOrder(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/lab-orders/$id/collect-sample', data: data);
  }

  @override
  Future<dynamic> approveResultsLabOrder(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/lab-orders/$id/approve-results', data: data);
  }

  @override
  Future<dynamic> getLabOrderById(String id) async {
    return await _dioService.get('/api/hospital/lab-orders/$id');
  }

  @override
  Future<dynamic> updateLabOrder(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/lab-orders/$id', data: data);
  }

  @override
  Future<dynamic> deleteLabOrder(String id) async {
    return await _dioService.delete('/api/hospital/lab-orders/$id');
  }

  @override
  Future<dynamic> getLabOrdersNumber(String ordernumber) async {
    return await _dioService.get('/api/hospital/lab-orders/by-number/$ordernumber');
  }

  @override
  Future<dynamic> getPatientBypatientid(String patientid) async {
    return await _dioService.get('/api/hospital/lab-orders/patient/$patientid');
  }

  @override
  Future<dynamic> getLabOrders([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/lab-orders', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createLabOrder(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/lab-orders', data: data);
  }

}
