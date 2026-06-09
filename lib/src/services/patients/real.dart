import '../../../common.dart';

class RealPatientsService implements PatientsService {
  final DioService _dioService;
  RealPatientsService(this._dioService);

  @override
  Future<Patient> getPatientById(String id) async {
    final response = await _dioService.get('/api/hospital/patients/$id');
    return Patient.fromJson(response.data);
  }

  @override
  Future<Patient> updatePatient(String id, Patient data) async {
    final response = await _dioService.put(
      '/api/hospital/patients/$id',
      data: data.toJson(),
    );
    return Patient.fromJson(response.data);
  }

  @override
  Future<Patient> deletePatient(String id) async {
    final response = await _dioService.delete('/api/hospital/patients/$id');
    return Patient.fromJson(response.data);
  }

  @override
  Future<Patient> getPatientsMrn(String mrn) async {
    final response = await _dioService.get(
      '/api/hospital/patients/by-mrn/$mrn',
    );
    return Patient.fromJson(response.data);
  }

  @override
  Future<Patient> getCheckMrnBymrn(String mrn, {String? excludeId}) async {
    final response = await _dioService.get(
      '/api/hospital/patients/check-mrn/$mrn',
      queryParameters: {if (excludeId != null) 'excludeId': excludeId},
    );
    return Patient.fromJson(response.data);
  }

  @override
  Future<Patient> getCheckEmailByemail(
    String email, {
    String? excludeId,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/patients/check-email/$email',
      queryParameters: {if (excludeId != null) 'excludeId': excludeId},
    );
    return Patient.fromJson(response.data);
  }

  @override
  Future<Patient> getCheckNationalidBynationalid(
    String nationalid, {
    String? excludeId,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/patients/check-nationalid/$nationalid',
      queryParameters: {if (excludeId != null) 'excludeId': excludeId},
    );
    return Patient.fromJson(response.data);
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
    final response = await _dioService.get(
      '/api/hospital/patients',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (gender != null) 'gender': gender,
        if (bloodType != null) 'bloodType': bloodType,
        if (isVIP != null) 'isVIP': isVIP,
        if (isActive != null) 'isActive': isActive,
        if (city != null) 'city': city,
        if (country != null) 'country': country,
        if (dateOfBirthFrom != null)
          'dateOfBirthFrom': formatDateTimeToUtcIso(dateOfBirthFrom),
        if (dateOfBirthTo != null)
          'dateOfBirthTo': formatDateTimeToUtcIso(dateOfBirthTo),
        if (ageFrom != null) 'ageFrom': ageFrom,
        if (ageTo != null) 'ageTo': ageTo,
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<Patient>((json) => Patient.fromJson(json))
        .toList();
  }

  @override
  Future<Patient> createPatient(Patient data) async {
    final response = await _dioService.post(
      '/api/hospital/patients',
      data: data.toJson(),
    );
    return Patient.fromJson(response.data);
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
    final response = await _dioService.get(
      '/api/hospital/patients',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (gender != null) 'gender': gender,
        if (bloodType != null) 'bloodType': bloodType,
        if (isVIP != null) 'isVIP': isVIP,
        if (isActive != null) 'isActive': isActive,
        if (city != null) 'city': city,
        if (country != null) 'country': country,
        if (dateOfBirthFrom != null)
          'dateOfBirthFrom': formatDateTimeToUtcIso(dateOfBirthFrom),
        if (dateOfBirthTo != null)
          'dateOfBirthTo': formatDateTimeToUtcIso(dateOfBirthTo),
        if (ageFrom != null) 'ageFrom': ageFrom,
        if (ageTo != null) 'ageTo': ageTo,
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['totalCount'] as int;
  }
}
