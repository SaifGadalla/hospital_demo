import '../../models/_exports.dart';
import '../dio_service.dart';
import 'base.dart';

class RealOperatingRoomsService implements OperatingRoomsService {
  final DioService _dioService;
  RealOperatingRoomsService(this._dioService);

  @override
  Future<OperatingRoom> statusOperatingRoom(
    String id,
    OperatingRoom data, {
    String? status,
  }) async {
    final response = await _dioService.post(
      '/api/hospital/operating-rooms/$id/status',
      data: data.toJson(),
      queryParameters: {if (status != null) 'status': status},
    );
    return OperatingRoom.fromJson(response.data);
  }

  @override
  Future<OperatingRoom> getOperatingRoomById(String id) async {
    final response = await _dioService.get('/api/hospital/operating-rooms/$id');
    return OperatingRoom.fromJson(response.data);
  }

  @override
  Future<OperatingRoom> updateOperatingRoom(
    String id,
    OperatingRoom data,
  ) async {
    final response = await _dioService.put(
      '/api/hospital/operating-rooms/$id',
      data: data.toJson(),
    );
    return OperatingRoom.fromJson(response.data);
  }

  @override
  Future<OperatingRoom> deleteOperatingRoom(String id) async {
    final response = await _dioService.delete(
      '/api/hospital/operating-rooms/$id',
    );
    return OperatingRoom.fromJson(response.data);
  }

  @override
  Future<List<OperatingRoom>> getOperatingRooms({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/operating-rooms',
      queryParameters: {
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as List)
        .map((e) => OperatingRoom.fromJson(e))
        .toList();
  }

  @override
  Future<OperatingRoom> createOperatingRoom(OperatingRoom data) async {
    final response = await _dioService.post(
      '/api/hospital/operating-rooms',
      data: data.toJson(),
    );
    return OperatingRoom.fromJson(response.data);
  }
}
