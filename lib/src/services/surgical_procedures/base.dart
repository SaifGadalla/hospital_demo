import '../../models/_exports.dart';
abstract class SurgicalProceduresService {
  Future<SurgicalProcedure> getSurgicalProcedureById(String id);
  Future<SurgicalProcedure> updateSurgicalProcedure(String id, SurgicalProcedure data);
  Future<SurgicalProcedure> deleteSurgicalProcedure(String id);
  Future<SurgicalProcedure> getSurgicalProceduresCode(String code);
  Future<List<SurgicalProcedure>> getSurgicalProcedures({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<SurgicalProcedure> createSurgicalProcedure(SurgicalProcedure data);
}
