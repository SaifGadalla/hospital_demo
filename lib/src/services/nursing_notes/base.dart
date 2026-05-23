abstract class NursingNotesService {
  Future<dynamic> getNursingNoteById(String id);
  Future<dynamic> deleteNursingNote(String id);
  Future<dynamic> getNursingNotesAdmission(String admissionid);
  Future<dynamic> createNursingNote(Map<String, dynamic> data);
}
