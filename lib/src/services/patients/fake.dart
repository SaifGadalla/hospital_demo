import 'package:uuid/uuid.dart';

import '../../models/_exports.dart';
import 'base.dart';

class FakePatientsService implements PatientsService {
  final List<Patient> _data = [
    Patient(
      id: const Uuid().v4(),
      mrn: 'MRN-00001',
      address: '123 Main St',
      email: 'john.doe@example.com',
      firstName: 'John',
      lastName: 'Doe',
      fullName: 'John Doe',
      bloodType: 'AB+',
      dateOfBirth: DateTime(1990, 1, 1),
      age: 36,
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
    Patient(
      id: const Uuid().v4(),
      mrn: 'MRN-00002',
      address: '456 Oak Ave',
      email: 'jane.smith@example.com',
      firstName: 'Jane',
      lastName: 'Smith',
      fullName: 'Jane Smith',
      bloodType: 'O-',
      dateOfBirth: DateTime(1985, 5, 12),
      age: 41,
      city: 'Boston',
      country: 'USA',
      gender: 'female',
      isActive: true,
      mobile: '555-111-2222',
      phone: '555-333-4444',
      primaryInsuranceId: 'INS987654321',
      state: 'MA',
    ),
    Patient(
      id: const Uuid().v4(),
      mrn: 'MRN-00003',
      address: '789 Pine Rd',
      email: 'alex.johnson@example.com',
      firstName: 'Alex',
      lastName: 'Johnson',
      fullName: 'Alex Johnson',
      bloodType: 'B+',
      dateOfBirth: DateTime(2000, 11, 23),
      age: 25,
      city: 'Chicago',
      country: 'USA',
      gender: 'male',
      isActive: true,
      mobile: '555-444-5555',
      primaryInsuranceId: 'INS555555555',
      state: 'IL',
    ),
  ];

  @override
  Future<Patient> getPatientById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.firstWhere((patient) => patient.id == id);
  }

  @override
  Future<Patient> updatePatient(String id, Patient data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _data.indexWhere((p) => p.id == id);
    if (index != -1) {
      _data[index] = data.copyWith(id: id);
      return _data[index];
    }
    throw Exception('Patient not found');
  }

  @override
  Future<Patient> deletePatient(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _data.indexWhere((p) => p.id == id);
    if (index != -1) {
      return _data.removeAt(index);
    }
    throw Exception('Patient not found');
  }

  @override
  Future<Patient> getPatientsMrn(String mrn) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data.firstWhere((patient) => patient.mrn == mrn);
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
    var result = List<Patient>.from(_data);

    if (searchTerm != null && searchTerm.isNotEmpty) {
      final term = searchTerm.toLowerCase();
      result = result.where((p) {
        return (p.fullName?.toLowerCase().contains(term) ?? false) ||
            (p.mrn?.toLowerCase().contains(term) ?? false) ||
            (p.email?.toLowerCase().contains(term) ?? false);
      }).toList();
    }

    if (gender != null) {
      result = result.where((p) => p.gender?.toLowerCase() == gender.toLowerCase()).toList();
    }

    return result;
  }

  @override
  Future<Patient> createPatient(Patient data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final patient = data.copyWith(
      id: const Uuid().v4(),
      mrn: 'MRN-${(_data.length + 1).toString().padLeft(5, '0')}',
      fullName: '${data.firstName ?? ''} ${data.lastName ?? ''}'.trim(),
    );
    _data.add(patient);
    return patient;
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
