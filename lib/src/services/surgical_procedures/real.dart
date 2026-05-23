import 'base.dart';
import '../dio_service.dart';

class RealSurgicalProceduresService implements SurgicalProceduresService {
  final DioService _dioService;
  RealSurgicalProceduresService(this._dioService);

  @override
  Future<dynamic> getSurgicalProcedureById(String id) async {
    return await _dioService.get('/api/hospital/surgical-procedures/$id');
  }

  @override
  Future<dynamic> updateSurgicalProcedure(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/surgical-procedures/$id', data: data);
  }

  @override
  Future<dynamic> deleteSurgicalProcedure(String id) async {
    return await _dioService.delete('/api/hospital/surgical-procedures/$id');
  }

  @override
  Future<dynamic> getSurgicalProceduresCode(String code) async {
    return await _dioService.get('/api/hospital/surgical-procedures/by-code/$code');
  }

  @override
  Future<dynamic> getSurgicalProcedures([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/surgical-procedures', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createSurgicalProcedure(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/surgical-procedures', data: data);
  }

}
