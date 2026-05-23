abstract class BedsService {
  Future<dynamic> statusBed(String id, Map<String, dynamic> data);
  Future<dynamic> getBedById(String id);
  Future<dynamic> updateBed(String id, Map<String, dynamic> data);
  Future<dynamic> deleteBed(String id);
  Future<dynamic> getBedsWard(String wardid);
  Future<dynamic> getBeds([Map<String, dynamic>? queryParams]);
  Future<dynamic> createBed(Map<String, dynamic> data);
}
