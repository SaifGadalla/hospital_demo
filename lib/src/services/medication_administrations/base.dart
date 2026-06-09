import '../../models/_exports.dart';
abstract class MedicationAdministrationsService {
  Future<MedicationAdministration> administeredMedicationAdministration(String id, MedicationAdministration data);
  Future<MedicationAdministration> missedMedicationAdministration(String id, MedicationAdministration data);
  Future<MedicationAdministration> getMedicationAdministrationById(String id);
  Future<MedicationAdministration> getMedicationAdministrationsAdmission(String admissionid);
  Future<MedicationAdministration> schedule(MedicationAdministration data);
}
