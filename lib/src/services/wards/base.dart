import '../../models/_exports.dart';

abstract class WardsService {
  Future<Ward> getWardById(String id);
  Future<Ward> updateWard(String id, Ward data);
  Future<Ward> deleteWard(String id);
  Future<Ward> getWardsCode(String code);
  Future<List<Ward>> getWards({
    String? searchTerm,
    String? wardType,
    String? departmentId,
    bool? isActive,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<Ward> createWard(Ward data);
}
