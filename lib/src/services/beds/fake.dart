import '../../models/_exports.dart';
import 'base.dart';

class FakeBedsService implements BedsService {
  final List<Bed> _data = [
    Bed(
      bedCode: 'B-101',
      bedNumber: '101',
      roomId: 'R-100',
      wardId: 'W-01',
      bedType: 'Standard',
      status: 'Occupied',
      isActive: true,
      dailyRate: 150.0,
    ),
    Bed(
      bedCode: 'B-102',
      bedNumber: '102',
      roomId: 'R-100',
      wardId: 'W-01',
      bedType: 'Standard',
      status: 'Available',
      isActive: true,
      dailyRate: 150.0,
    ),
    Bed(
      bedCode: 'B-201',
      bedNumber: '201',
      roomId: 'R-200',
      wardId: 'W-02',
      bedType: 'ICU',
      status: 'Maintenance',
      isActive: false,
      dailyRate: 300.0,
    ),
  ];

  @override
  Future<Bed> statusBed(String id, Bed data, {
    String? status,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<Bed> getBedById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Bed();
  }

  @override
  Future<Bed> updateBed(String id, Bed data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<void> deleteBed(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<List<Bed>> getBedsByWardId(String wardid, {
    String? status,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<List<Bed>> getBeds({
    String? searchTerm,
    String? wardId,
    String? roomId,
    String? bedType,
    String? status,
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
  Future<Bed> createBed(Bed data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<int> getBedsTotalCount({
    String? searchTerm,
    String? wardId,
    String? roomId,
    String? bedType,
    String? status,
    bool? isActive,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.length;
  }
}
