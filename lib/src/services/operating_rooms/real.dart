import 'base.dart';
import '../dio_service.dart';

class RealOperatingRoomsService implements OperatingRoomsService {
  final DioService _dioService;
  RealOperatingRoomsService(this._dioService);

  @override
  Future<dynamic> statusOperatingRoom(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/operating-rooms/$id/status', data: data);
  }

  @override
  Future<dynamic> getOperatingRoomById(String id) async {
    return await _dioService.get('/api/hospital/operating-rooms/$id');
  }

  @override
  Future<dynamic> updateOperatingRoom(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/operating-rooms/$id', data: data);
  }

  @override
  Future<dynamic> deleteOperatingRoom(String id) async {
    return await _dioService.delete('/api/hospital/operating-rooms/$id');
  }

  @override
  Future<dynamic> getOperatingRooms([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/operating-rooms', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createOperatingRoom(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/operating-rooms', data: data);
  }

}
