import '../../models/_exports.dart';
import '../dio_service.dart';
import 'base.dart';

class RealLabOrderTestsService implements LabOrderTestsService {
  final DioService _dioService;
  RealLabOrderTestsService(this._dioService);

  @override
  Future<LabOrderTest> resultLabOrderTest(String id, LabOrderTest data) async {
    final response = await _dioService.post(
      '/api/hospital/lab-order-tests/$id/result',
      data: data.toJson(),
    );
    return LabOrderTest.fromJson(response.data);
  }

  @override
  Future<LabOrderTest> markAbnormalLabOrderTest(
    String id,
    LabOrderTest data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/lab-order-tests/$id/mark-abnormal',
      data: data.toJson(),
    );
    return LabOrderTest.fromJson(response.data);
  }

  @override
  Future<LabOrderTest> getLabOrderTestById(String id) async {
    final response = await _dioService.get('/api/hospital/lab-order-tests/$id');
    return LabOrderTest.fromJson(response.data);
  }

  @override
  Future<LabOrderTest> updateLabOrderTest(String id, LabOrderTest data) async {
    final response = await _dioService.put(
      '/api/hospital/lab-order-tests/$id',
      data: data.toJson(),
    );
    return LabOrderTest.fromJson(response.data);
  }

  @override
  Future<LabOrderTest> deleteLabOrderTest(String id) async {
    final response = await _dioService.delete(
      '/api/hospital/lab-order-tests/$id',
    );
    return LabOrderTest.fromJson(response.data);
  }

  @override
  Future<LabOrderTest> getLabOrderBylaborderid(String laborderid) async {
    final response = await _dioService.get(
      '/api/hospital/lab-order-tests/lab-order/$laborderid',
    );
    return LabOrderTest.fromJson(response.data);
  }

  @override
  Future<List<LabOrderTest>> getLabOrderTests({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/lab-order-tests',
      queryParameters: {
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as List)
        .map((e) => LabOrderTest.fromJson(e))
        .toList();
  }

  @override
  Future<LabOrderTest> createLabOrderTest(LabOrderTest data) async {
    final response = await _dioService.post(
      '/api/hospital/lab-order-tests',
      data: data.toJson(),
    );
    return LabOrderTest.fromJson(response.data);
  }
}
