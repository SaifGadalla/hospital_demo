import '../../models/_exports.dart';
import 'base.dart';
import '../dio_service.dart';

class RealRoomsService implements RoomsService {
  final DioService _dioService;
  RealRoomsService(this._dioService);

  @override
  Future<Room> getRoomById(String id) async {
    final response = await _dioService.get('/api/hospital/rooms/$id');
    return Room.fromJson(response.data);
  }

  @override
  Future<Room> updateRoom(String id, Room data) async {
    final response = await _dioService.put(
      '/api/hospital/rooms/$id',
      data: data.toJson(),
    );
    return Room.fromJson(response.data);
  }

  @override
  Future<Room> deleteRoom(String id) async {
    final response = await _dioService.delete('/api/hospital/rooms/$id');
    return Room.fromJson(response.data);
  }

  @override
  Future<Room> getRoomsWard(String wardid) async {
    final response = await _dioService.get(
      '/api/hospital/rooms/by-ward/$wardid',
    );
    return Room.fromJson(response.data);
  }

  @override
  Future<List<Room>> getRooms({
    String? searchTerm,
    String? wardId,
    String? roomType,
    bool? isActive,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/rooms',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (wardId != null) 'wardId': wardId,
        if (roomType != null) 'roomType': roomType,
        if (isActive != null) 'isActive': isActive,
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as List).map((e) => Room.fromJson(e)).toList();
  }

  @override
  Future<Room> createRoom(Room data) async {
    final response = await _dioService.post(
      '/api/hospital/rooms',
      data: data.toJson(),
    );
    return Room.fromJson(response.data);
  }
}
