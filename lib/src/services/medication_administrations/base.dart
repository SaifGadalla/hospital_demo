abstract class MedicationAdministrationsService {
  Future<dynamic> administeredMedicationAdministration(String id, Map<String, dynamic> data);
  Future<dynamic> missedMedicationAdministration(String id, Map<String, dynamic> data);
  Future<dynamic> getMedicationAdministrationById(String id);
  Future<dynamic> getMedicationAdministrationsAdmission(String admissionid);
  Future<dynamic> schedule(Map<String, dynamic> data);
}
