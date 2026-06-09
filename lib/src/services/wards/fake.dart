import '../../models/_exports.dart';
import 'base.dart';

class FakeWardsService implements WardsService {
  final List<Ward> _data = [
    Ward(
      departmentId: 'cardiology',
      isActive: true,
      nurseStationLocation: 'North Wing, Floor 2',
      wardCode: 'W-01',
      wardName: 'Cardiology Ward',
      wardType: 'General',
      totalBeds: 20,
    ),
  ];

  @override
  Future<Ward> getWardById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Ward();
  }

  @override
  Future<Ward> updateWard(String id, Ward data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<Ward> deleteWard(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Ward();
  }

  @override
  Future<Ward> getWardsCode(String code) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Ward();
  }

  @override
  Future<List<Ward>> getWards({
    String? searchTerm,
    String? wardType,
    String? departmentId,
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
  Future<Ward> createWard(Ward data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }
}
