import '../../models/_exports.dart';
import 'base.dart';

class FakePrescriptionItemsService implements PrescriptionItemsService {
  final List<PrescriptionItem> _data = [];

  @override
  Future<PrescriptionItem> dispensePrescriptionItem(String id, PrescriptionItem data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<PrescriptionItem> getPrescriptionItemById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return PrescriptionItem();
  }

  @override
  Future<PrescriptionItem> updatePrescriptionItem(String id, PrescriptionItem data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<PrescriptionItem> deletePrescriptionItem(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return PrescriptionItem();
  }

  @override
  Future<PrescriptionItem> getPrescriptionByprescriptionid(String prescriptionid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return PrescriptionItem();
  }

  @override
  Future<List<PrescriptionItem>> getPrescriptionItems({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<PrescriptionItem> createPrescriptionItem(PrescriptionItem data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

}
