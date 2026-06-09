import '../../models/_exports.dart';

abstract class PatientsService {
  Future<Patient> getPatientById(String id);
  Future<Patient> updatePatient(String id, Patient data);
  Future<Patient> deletePatient(String id);
  Future<Patient> getPatientsMrn(String mrn);
  Future<Patient> getCheckMrnBymrn(String mrn, {
    String? excludeId,
  });
  Future<Patient> getCheckEmailByemail(String email, {
    String? excludeId,
  });
  Future<Patient> getCheckNationalidBynationalid(String nationalid, {
    String? excludeId,
  });
  Future<List<Patient>> getPatients({
    String? searchTerm,
    String? gender,
    String? bloodType,
    bool? isVIP,
    bool? isActive,
    String? city,
    String? country,
    DateTime? dateOfBirthFrom,
    DateTime? dateOfBirthTo,
    int? ageFrom,
    int? ageTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<Patient> createPatient(Patient data);
  Future<int> getPatientsTotalCount();
}
