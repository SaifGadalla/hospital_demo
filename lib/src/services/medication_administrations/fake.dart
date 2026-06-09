import '../../models/_exports.dart';
import 'base.dart';

class FakeMedicationAdministrationsService implements MedicationAdministrationsService {
  final List<MedicationAdministration> _data = [];

  @override
  Future<MedicationAdministration> administeredMedicationAdministration(String id, MedicationAdministration data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<MedicationAdministration> missedMedicationAdministration(String id, MedicationAdministration data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<MedicationAdministration> getMedicationAdministrationById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return MedicationAdministration();
  }

  @override
  Future<MedicationAdministration> getMedicationAdministrationsAdmission(String admissionid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return MedicationAdministration();
  }

  @override
  Future<MedicationAdministration> schedule(MedicationAdministration data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

}
