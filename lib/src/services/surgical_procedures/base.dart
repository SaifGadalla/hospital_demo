abstract class SurgicalProceduresService {
  Future<dynamic> getSurgicalProcedureById(String id);
  Future<dynamic> updateSurgicalProcedure(String id, Map<String, dynamic> data);
  Future<dynamic> deleteSurgicalProcedure(String id);
  Future<dynamic> getSurgicalProceduresCode(String code);
  Future<dynamic> getSurgicalProcedures([Map<String, dynamic>? queryParams]);
  Future<dynamic> createSurgicalProcedure(Map<String, dynamic> data);
}
