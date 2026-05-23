import 'base.dart';
import '../dio_service.dart';

class RealLabOrderTestsService implements LabOrderTestsService {
  final DioService _dioService;
  RealLabOrderTestsService(this._dioService);

  @override
  Future<dynamic> resultLabOrderTest(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/lab-order-tests/$id/result', data: data);
  }

  @override
  Future<dynamic> markAbnormalLabOrderTest(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/lab-order-tests/$id/mark-abnormal', data: data);
  }

  @override
  Future<dynamic> getLabOrderTestById(String id) async {
    return await _dioService.get('/api/hospital/lab-order-tests/$id');
  }

  @override
  Future<dynamic> updateLabOrderTest(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/lab-order-tests/$id', data: data);
  }

  @override
  Future<dynamic> deleteLabOrderTest(String id) async {
    return await _dioService.delete('/api/hospital/lab-order-tests/$id');
  }

  @override
  Future<dynamic> getLabOrderBylaborderid(String laborderid) async {
    return await _dioService.get('/api/hospital/lab-order-tests/lab-order/$laborderid');
  }

  @override
  Future<dynamic> getLabOrderTests([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/lab-order-tests', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createLabOrderTest(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/lab-order-tests', data: data);
  }

}
