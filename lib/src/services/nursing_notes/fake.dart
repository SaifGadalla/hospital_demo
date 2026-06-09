import '../../models/_exports.dart';
import 'base.dart';

class FakeNursingNotesService implements NursingNotesService {
  final List<NursingNote> _data = [];

  @override
  Future<NursingNote> getNursingNoteById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return NursingNote();
  }

  @override
  Future<NursingNote> deleteNursingNote(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return NursingNote();
  }

  @override
  Future<NursingNote> getNursingNotesAdmission(String admissionid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return NursingNote();
  }

  @override
  Future<NursingNote> createNursingNote(NursingNote data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

}
