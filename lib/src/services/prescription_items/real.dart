import 'base.dart';
import '../dio_service.dart';

class RealPrescriptionItemsService implements PrescriptionItemsService {
  final DioService _dioService;
  RealPrescriptionItemsService(this._dioService);

  @override
  Future<dynamic> dispensePrescriptionItem(String id, Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/prescription-items/$id/dispense', data: data);
  }

  @override
  Future<dynamic> getPrescriptionItemById(String id) async {
    return await _dioService.get('/api/hospital/prescription-items/$id');
  }

  @override
  Future<dynamic> updatePrescriptionItem(String id, Map<String, dynamic> data) async {
    return await _dioService.put('/api/hospital/prescription-items/$id', data: data);
  }

  @override
  Future<dynamic> deletePrescriptionItem(String id) async {
    return await _dioService.delete('/api/hospital/prescription-items/$id');
  }

  @override
  Future<dynamic> getPrescriptionByprescriptionid(String prescriptionid) async {
    return await _dioService.get('/api/hospital/prescription-items/prescription/$prescriptionid');
  }

  @override
  Future<dynamic> getPrescriptionItems([Map<String, dynamic>? queryParams]) async {
    return await _dioService.get('/api/hospital/prescription-items', queryParameters: queryParams);
  }

  @override
  Future<dynamic> createPrescriptionItem(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/prescription-items', data: data);
  }

}
