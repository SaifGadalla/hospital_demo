import 'base.dart';

class FakeNursingNotesService implements NursingNotesService {
  final List<Map<String, dynamic>> _data = [];

  @override
  Future<dynamic> getNursingNoteById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> deleteNursingNote(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'success': true};
  }

  @override
  Future<dynamic> getNursingNotesAdmission(String admissionid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> createNursingNote(Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

}
