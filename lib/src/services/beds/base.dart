import '../../models/_exports.dart';

abstract class BedsService {
  //TODO model check
  Future<Bed> statusBed(String id, Bed data, {String? status});
  Future<Bed> getBedById(String id);
  Future<Bed> updateBed(String id, Bed data);
  Future<void> deleteBed(String id);
  Future<List<Bed>> getBedsByWardId(String wardid, {String? status});
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
  });
  Future<Bed> createBed(Bed data);
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
  });
}
