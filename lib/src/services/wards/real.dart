import '../../models/_exports.dart';
import '../dio_service.dart';
import 'base.dart';

class RealWardsService implements WardsService {
  final DioService _dioService;
  RealWardsService(this._dioService);

  @override
  Future<Ward> getWardById(String id) async {
    final response = await _dioService.get('/api/hospital/wards/$id');
    return Ward.fromJson(response.data);
  }

  @override
  Future<Ward> updateWard(String id, Ward data) async {
    final response = await _dioService.put(
      '/api/hospital/wards/$id',
      data: data.toJson(),
    );
    return Ward.fromJson(response.data);
  }

  @override
  Future<Ward> deleteWard(String id) async {
    final response = await _dioService.delete('/api/hospital/wards/$id');
    return Ward.fromJson(response.data);
  }

  @override
  Future<Ward> getWardsCode(String code) async {
    final response = await _dioService.get('/api/hospital/wards/by-code/$code');
    return Ward.fromJson(response.data);
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
    final response = await _dioService.get(
      '/api/hospital/wards',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (wardType != null) 'wardType': wardType,
        if (departmentId != null) 'departmentId': departmentId,
        if (isActive != null) 'isActive': isActive,
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<Ward>((e) => Ward.fromJson(e))
        .toList();
  }

  @override
  Future<Ward> createWard(Ward data) async {
    final response = await _dioService.post(
      '/api/hospital/wards',
      data: data.toJson(),
    );
    return Ward.fromJson(response.data);
  }
}
