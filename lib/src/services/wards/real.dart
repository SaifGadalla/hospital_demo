import 'base.dart';
import '../dio_service.dart';

class RealWardsService implements WardsService {
  final DioService _dioService;
  RealWardsService(this._dioService);

  @override
  Future<dynamic> getWardById(String id) async {
    return await _dioService.get('/api/hospital/wards/$id');
  }

  @override
  Future<dynamic> updateWard(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/wards/$id', data: data);
  }

  @override
  Future<dynamic> deleteWard(String id) async {
    return await _dioService.delete('/api/hospital/wards/$id');
  }

  @override
  Future<dynamic> getWardsCode(String code) async {
    return await _dioService.get('/api/hospital/wards/by-code/$code');
  }

  @override
  Future<dynamic> getWards([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/wards', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createWard(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/wards', data: data);
  }

}
