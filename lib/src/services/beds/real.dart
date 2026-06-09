import '../../models/_exports.dart';
import '../dio_service.dart';
import 'base.dart';

class RealBedsService implements BedsService {
  final DioService _dioService;
  RealBedsService(this._dioService);

  @override
  Future<Bed> statusBed(String id, Bed data, {String? status}) async {
    final response = await _dioService.post(
      '/api/hospital/beds/$id/status',
      data: data.toJson(),
      queryParameters: {if (status != null) 'status': status},
    );
    return Bed.fromJson(response.data);
  }

  @override
  Future<Bed> getBedById(String id) async {
    final response = await _dioService.get('/api/hospital/beds/$id');
    return Bed.fromJson(response.data);
  }

  @override
  Future<Bed> updateBed(String id, Bed data) async {
    final response = await _dioService.put(
      '/api/hospital/beds/$id',
      data: data.toJson(),
    );
    return Bed.fromJson(response.data);
  }

  @override
  Future<Bed> deleteBed(String id) async {
    final response = await _dioService.delete('/api/hospital/beds/$id');
    return Bed.fromJson(response.data);
  }

  @override
  Future<List<Bed>> getBedsByWardId(String wardid, {String? status}) async {
    final response = await _dioService.get(
      '/api/hospital/beds/by-ward/$wardid',
      queryParameters: {if (status != null) 'status': status},
    );
    return (response.data as Map<String, dynamic>)['items']
        .map((e) => Bed.fromJson(e))
        .toList();
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
    final response = await _dioService.get(
      '/api/hospital/beds',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (wardId != null) 'wardId': wardId,
        if (roomId != null) 'roomId': roomId,
        if (bedType != null) 'bedType': bedType,
        if (status != null) 'status': status,
        if (isActive != null) 'isActive': isActive,
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<Bed>((e) => Bed.fromJson(e))
        .toList();
  }

  @override
  Future<Bed> createBed(Bed data) async {
    final response = await _dioService.post(
      '/api/hospital/beds',
      data: data.toJson(),
    );
    return Bed.fromJson(response.data);
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
    final response = await _dioService.get(
      '/api/hospital/beds',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (wardId != null) 'wardId': wardId,
        if (roomId != null) 'roomId': roomId,
        if (bedType != null) 'bedType': bedType,
        if (status != null) 'status': status,
        if (isActive != null) 'isActive': isActive,
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return response.data['totalCount'] ?? 0;
  }
}
