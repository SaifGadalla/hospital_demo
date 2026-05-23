abstract class PrescriptionItemsService {
  Future<dynamic> dispensePrescriptionItem(String id, Map<String, dynamic> data);
  Future<dynamic> getPrescriptionItemById(String id);
  Future<dynamic> updatePrescriptionItem(String id, Map<String, dynamic> data);
  Future<dynamic> deletePrescriptionItem(String id);
  Future<dynamic> getPrescriptionByprescriptionid(String prescriptionid);
  Future<dynamic> getPrescriptionItems([Map<String, dynamic>? queryParams]);
  Future<dynamic> createPrescriptionItem(Map<String, dynamic> data);
}
