abstract class OperatingRoomsService {
  Future<dynamic> statusOperatingRoom(String id, Map<String, dynamic> data);
  Future<dynamic> getOperatingRoomById(String id);
  Future<dynamic> updateOperatingRoom(String id, Map<String, dynamic> data);
  Future<dynamic> deleteOperatingRoom(String id);
  Future<dynamic> getOperatingRooms([Map<String, dynamic>? queryParams]);
  Future<dynamic> createOperatingRoom(Map<String, dynamic> data);
}
