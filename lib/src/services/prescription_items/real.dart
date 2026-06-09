import '../../models/_exports.dart';
import '../dio_service.dart';
import 'base.dart';

class RealPrescriptionItemsService implements PrescriptionItemsService {
  final DioService _dioService;
  RealPrescriptionItemsService(this._dioService);

  @override
  Future<PrescriptionItem> dispensePrescriptionItem(
    String id,
    PrescriptionItem data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/prescription-items/$id/dispense',
      data: data.toJson(),
    );
    return PrescriptionItem.fromJson(response.data);
  }

  @override
  Future<PrescriptionItem> getPrescriptionItemById(String id) async {
    final response = await _dioService.get(
      '/api/hospital/prescription-items/$id',
    );
    return PrescriptionItem.fromJson(response.data);
  }

  @override
  Future<PrescriptionItem> updatePrescriptionItem(
    String id,
    PrescriptionItem data,
  ) async {
    final response = await _dioService.put(
      '/api/hospital/prescription-items/$id',
      data: data.toJson(),
    );
    return PrescriptionItem.fromJson(response.data);
  }

  @override
  Future<PrescriptionItem> deletePrescriptionItem(String id) async {
    final response = await _dioService.delete(
      '/api/hospital/prescription-items/$id',
    );
    return PrescriptionItem.fromJson(response.data);
  }

  @override
  Future<PrescriptionItem> getPrescriptionByprescriptionid(
    String prescriptionid,
  ) async {
    final response = await _dioService.get(
      '/api/hospital/prescription-items/prescription/$prescriptionid',
    );
    return PrescriptionItem.fromJson(response.data);
  }

  @override
  Future<List<PrescriptionItem>> getPrescriptionItems({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/prescription-items',
      queryParameters: {
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as List)
        .map((e) => PrescriptionItem.fromJson(e))
        .toList();
  }

  @override
  Future<PrescriptionItem> createPrescriptionItem(PrescriptionItem data) async {
    final response = await _dioService.post(
      '/api/hospital/prescription-items',
      data: data.toJson(),
    );
    return PrescriptionItem.fromJson(response.data);
  }
}
