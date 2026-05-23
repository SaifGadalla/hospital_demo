import 'base.dart';
import '../dio_service.dart';

class RealRoomsService implements RoomsService {
  final DioService _dioService;
  RealRoomsService(this._dioService);

  @override
  Future<dynamic> getRoomById(String id) async {
    return await _dioService.get('/api/hospital/rooms/$id');
  }

  @override
  Future<dynamic> updateRoom(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/rooms/$id', data: data);
  }

  @override
  Future<dynamic> deleteRoom(String id) async {
    return await _dioService.delete('/api/hospital/rooms/$id');
  }

  @override
  Future<dynamic> getRoomsWard(String wardid) async {
    return await _dioService.get('/api/hospital/rooms/by-ward/$wardid');
  }

  @override
  Future<dynamic> getRooms([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/rooms', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createRoom(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/rooms', data: data);
  }

}
