import '../../models/_exports.dart';
import '../dio_service.dart';
import 'base.dart';

class RealNursingNotesService implements NursingNotesService {
  final DioService _dioService;
  RealNursingNotesService(this._dioService);

  @override
  Future<NursingNote> getNursingNoteById(String id) async {
    final response = await _dioService.get('/api/hospital/nursing-notes/$id');
    return NursingNote.fromJson(response.data);
  }

  @override
  Future<NursingNote> deleteNursingNote(String id) async {
    final response = await _dioService.delete(
      '/api/hospital/nursing-notes/$id',
    );
    return NursingNote.fromJson(response.data);
  }

  @override
  Future<NursingNote> getNursingNotesAdmission(String admissionid) async {
    final response = await _dioService.get(
      '/api/hospital/nursing-notes/by-admission/$admissionid',
    );
    return NursingNote.fromJson(response.data);
  }

  @override
  Future<NursingNote> createNursingNote(NursingNote data) async {
    final response = await _dioService.post(
      '/api/hospital/nursing-notes',
      data: data.toJson(),
    );
    return NursingNote.fromJson(response.data);
  }
}
