abstract class RoomsService {
  Future<dynamic> getRoomById(String id);
  Future<dynamic> updateRoom(String id, Map<String, dynamic> data);
  Future<dynamic> deleteRoom(String id);
  Future<dynamic> getRoomsWard(String wardid);
  Future<dynamic> getRooms([Map<String, dynamic>? queryParams]);
  Future<dynamic> createRoom(Map<String, dynamic> data);
}
