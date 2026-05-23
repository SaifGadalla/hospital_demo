import 'base.dart';
import '../dio_service.dart';

class RealBedsService implements BedsService {
  final DioService _dioService;
  RealBedsService(this._dioService);

  @override
  Future<dynamic> statusBed(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/beds/$id/status', data: data);
  }

  @override
  Future<dynamic> getBedById(String id) async {
    return await _dioService.get('/api/hospital/beds/$id');
  }

  @override
  Future<dynamic> updateBed(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/beds/$id', data: data);
  }

  @override
  Future<dynamic> deleteBed(String id) async {
    return await _dioService.delete('/api/hospital/beds/$id');
  }

  @override
  Future<dynamic> getBedsWard(String wardid) async {
    return await _dioService.get('/api/hospital/beds/by-ward/$wardid');
  }

  @override
  Future<dynamic> getBeds([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/beds', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createBed(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/beds', data: data);
  }

}
