import '../../models/_exports.dart';
abstract class PrescriptionItemsService {
  Future<PrescriptionItem> dispensePrescriptionItem(String id, PrescriptionItem data);
  Future<PrescriptionItem> getPrescriptionItemById(String id);
  Future<PrescriptionItem> updatePrescriptionItem(String id, PrescriptionItem data);
  Future<PrescriptionItem> deletePrescriptionItem(String id);
  Future<PrescriptionItem> getPrescriptionByprescriptionid(String prescriptionid);
  Future<List<PrescriptionItem>> getPrescriptionItems({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<PrescriptionItem> createPrescriptionItem(PrescriptionItem data);
}
