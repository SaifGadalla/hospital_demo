import '../../models/_exports.dart';
import 'base.dart';

class FakeOperatingRoomsService implements OperatingRoomsService {
  final List<OperatingRoom> _data = [];

  @override
  Future<OperatingRoom> statusOperatingRoom(String id, OperatingRoom data, {
    String? status,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<OperatingRoom> getOperatingRoomById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return OperatingRoom();
  }

  @override
  Future<OperatingRoom> updateOperatingRoom(String id, OperatingRoom data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<OperatingRoom> deleteOperatingRoom(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return OperatingRoom();
  }

  @override
  Future<List<OperatingRoom>> getOperatingRooms({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<OperatingRoom> createOperatingRoom(OperatingRoom data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

}
