import '../../models/_exports.dart';
import 'base.dart';

class FakeRoomsService implements RoomsService {
  final List<Room> _data = [
    Room(
      wardId: 'W-01',
      roomNumber: '100',
      roomType: 'General',
      capacity: 2,
      isActive: true,
      dailyRate: 200.0,
      roomCode: 'R-100',
    ),
  ];

  @override
  Future<Room> getRoomById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Room();
  }

  @override
  Future<Room> updateRoom(String id, Room data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<Room> deleteRoom(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Room();
  }

  @override
  Future<Room> getRoomsWard(String wardid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Room();
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
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<Room> createRoom(Room data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }
}
