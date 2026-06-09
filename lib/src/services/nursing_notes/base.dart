import '../../models/_exports.dart';
abstract class NursingNotesService {
  Future<NursingNote> getNursingNoteById(String id);
  Future<NursingNote> deleteNursingNote(String id);
  Future<NursingNote> getNursingNotesAdmission(String admissionid);
  Future<NursingNote> createNursingNote(NursingNote data);
}
