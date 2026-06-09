import '../../models/_exports.dart';
abstract class RoomsService {
  Future<Room> getRoomById(String id);
  Future<Room> updateRoom(String id, Room data);
  Future<Room> deleteRoom(String id);
  Future<Room> getRoomsWard(String wardid);
  Future<List<Room>> getRooms({
    String? searchTerm,
    String? wardId,
    String? roomType,
    bool? isActive,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<Room> createRoom(Room data);
}
