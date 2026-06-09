import '../../models/_exports.dart';
import 'base.dart';

class FakeSurgicalProceduresService implements SurgicalProceduresService {
  final List<SurgicalProcedure> _data = [];

  @override
  Future<SurgicalProcedure> getSurgicalProcedureById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return SurgicalProcedure();
  }

  @override
  Future<SurgicalProcedure> updateSurgicalProcedure(String id, SurgicalProcedure data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<SurgicalProcedure> deleteSurgicalProcedure(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return SurgicalProcedure();
  }

  @override
  Future<SurgicalProcedure> getSurgicalProceduresCode(String code) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return SurgicalProcedure();
  }

  @override
  Future<List<SurgicalProcedure>> getSurgicalProcedures({
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<SurgicalProcedure> createSurgicalProcedure(SurgicalProcedure data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

}
