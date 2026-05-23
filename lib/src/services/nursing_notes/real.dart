import 'base.dart';
import '../dio_service.dart';

class RealNursingNotesService implements NursingNotesService {
  final DioService _dioService;
  RealNursingNotesService(this._dioService);

  @override
  Future<dynamic> getNursingNoteById(String id) async {
    return await _dioService.get('/api/hospital/nursing-notes/$id');
  }

  @override
  Future<dynamic> deleteNursingNote(String id) async {
    return await _dioService.delete('/api/hospital/nursing-notes/$id');
  }

  @override
  Future<dynamic> getNursingNotesAdmission(String admissionid) async {
    return await _dioService.get('/api/hospital/nursing-notes/by-admission/$admissionid');
  }

  @override
  Future<dynamic> createNursingNote(Map<String, dynamic> data) async {
    return await _dioService.post('/api/hospital/nursing-notes', data: data);
  }

}
