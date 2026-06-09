import '../../models/_exports.dart';
import 'base.dart';

class FakePatientsService implements PatientsService {
  final List<Patient> _data = [
    Patient(
      address: '123 Main St',
      email: 'john.doe@example.com',
      firstName: 'John',
      lastName: 'Doe',
      bloodType: 'AB+',
      dateOfBirth: DateTime(1990, 1, 1),
      city: 'New York',
      country: 'USA',
      emergencyContactName: 'Jane Doe',
      emergencyContactPhone: '555-123-4567',
      emergencyContactRelationship: 'spouse',
      gender: 'male',
      maritalStatus: 'married',
      insuranceMemberNumber: 'INS123456789',
      insurancePolicyNumber: 'POL987654321',
      isActive: true,
      isVIP: false,
      middleName: 'Michael',
      mobile: '555-987-6543',
      nationalId: '123456789',
      nationality: 'American',
      passportNumber: 'A12345678',
      phone: '555-555-5555',
      photoUrl: 'https://example.com/photos/john_doe.jpg',
      primaryInsuranceId: 'INS123456789',
      state: 'NY',
    ),
  ];

  @override
  Future<Patient> getPatientById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.firstWhere((patient) => patient.nationalId == id);
  }

  @override
  Future<Patient> updatePatient(String id, Patient data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<Patient> deletePatient(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Patient();
  }

  @override
  Future<Patient> getPatientsMrn(String mrn) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Patient();
  }

  @override
  Future<Patient> getCheckMrnBymrn(String mrn, {String? excludeId}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Patient();
  }

  @override
  Future<Patient> getCheckEmailByemail(
    String email, {
    String? excludeId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Patient();
  }

  @override
  Future<Patient> getCheckNationalidBynationalid(
    String nationalid, {
    String? excludeId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Patient();
  }

  @override
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
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<Patient> createPatient(Patient data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<int> getPatientsTotalCount({
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
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.length;
  }
}
