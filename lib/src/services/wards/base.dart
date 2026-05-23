abstract class WardsService {
  Future<dynamic> getWardById(String id);
  Future<dynamic> updateWard(String id, Map<String, dynamic> data);
  Future<dynamic> deleteWard(String id);
  Future<dynamic> getWardsCode(String code);
  Future<dynamic> getWards([Map<String, dynamic>? queryParams]);
  Future<dynamic> createWard(Map<String, dynamic> data);
}
