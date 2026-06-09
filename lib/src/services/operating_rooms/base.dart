import '../../models/_exports.dart';
abstract class OperatingRoomsService {
  Future<OperatingRoom> statusOperatingRoom(String id, OperatingRoom data, {
    String? status,
  });
  Future<OperatingRoom> getOperatingRoomById(String id);
  Future<OperatingRoom> updateOperatingRoom(String id, OperatingRoom data);
  Future<OperatingRoom> deleteOperatingRoom(String id);
  Future<List<OperatingRoom>> getOperatingRooms({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<OperatingRoom> createOperatingRoom(OperatingRoom data);
}
