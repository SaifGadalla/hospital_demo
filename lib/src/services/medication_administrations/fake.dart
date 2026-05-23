import 'base.dart';

class FakeMedicationAdministrationsService implements MedicationAdministrationsService {
  final List<Map<String, dynamic>> _data = [];

  @override
  Future<dynamic> administeredMedicationAdministration(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> missedMedicationAdministration(String id, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

  @override
  Future<dynamic> getMedicationAdministrationById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> getMedicationAdministrationsAdmission(String admissionid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> schedule(Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (data.isNotEmpty) _data.add(data);
    return data;
  }

}
