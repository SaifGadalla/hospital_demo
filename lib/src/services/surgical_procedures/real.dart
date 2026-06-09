import '../../models/_exports.dart';
import '../dio_service.dart';
import 'base.dart';

class RealSurgicalProceduresService implements SurgicalProceduresService {
  final DioService _dioService;
  RealSurgicalProceduresService(this._dioService);

  @override
  Future<SurgicalProcedure> getSurgicalProcedureById(String id) async {
    final response = await _dioService.get(
      '/api/hospital/surgical-procedures/$id',
    );
    return SurgicalProcedure.fromJson(response.data);
  }

  @override
  Future<SurgicalProcedure> updateSurgicalProcedure(
    String id,
    SurgicalProcedure data,
  ) async {
    final response = await _dioService.put(
      '/api/hospital/surgical-procedures/$id',
      data: data.toJson(),
    );
    return SurgicalProcedure.fromJson(response.data);
  }

  @override
  Future<SurgicalProcedure> deleteSurgicalProcedure(String id) async {
    final response = await _dioService.delete(
      '/api/hospital/surgical-procedures/$id',
    );
    return SurgicalProcedure.fromJson(response.data);
  }

  @override
  Future<SurgicalProcedure> getSurgicalProceduresCode(String code) async {
    final response = await _dioService.get(
      '/api/hospital/surgical-procedures/by-code/$code',
    );
    return SurgicalProcedure.fromJson(response.data);
  }

  @override
  Future<List<SurgicalProcedure>> getSurgicalProcedures({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/surgical-procedures',
      queryParameters: {
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as List)
        .map((e) => SurgicalProcedure.fromJson(e))
        .toList();
  }

  @override
  Future<SurgicalProcedure> createSurgicalProcedure(
    SurgicalProcedure data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/surgical-procedures',
      data: data.toJson(),
    );
    return SurgicalProcedure.fromJson(response.data);
  }
}
