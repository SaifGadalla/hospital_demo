import '../../../common.dart';

class RealAdmissionsService implements AdmissionsService {
  final DioService _dioService;
  RealAdmissionsService(this._dioService);

  @override
  Future<Admission> transferAdmission(String id, Admission data) async {
    final response = await _dioService.post(
      '/api/hospital/admissions/$id/transfer',
      data: data.toJson(),
    );
    return Admission.fromJson(response.data);
  }

  @override
  Future<Admission> dischargeAdmission(String id, Admission data) async {
    final response = await _dioService.post(
      '/api/hospital/admissions/$id/discharge',
      data: data.toJson(),
    );
    return Admission.fromJson(response.data);
  }

  @override
  Future<Admission> getAdmissionById(String id) async {
    final response = await _dioService.get('/api/hospital/admissions/$id');
    return Admission.fromJson(response.data);
  }

  @override
  Future<Admission> updateAdmission(String id, Admission data) async {
    final response = await _dioService.put(
      '/api/hospital/admissions/$id',
      data: data.toJson(),
    );
    return Admission.fromJson(response.data);
  }

  @override
  Future<void> deleteAdmission(String id) async {
    await _dioService.delete('/api/hospital/admissions/$id');
  }

  @override
  Future<Admission> getAdmissionByNumber(String number) async {
    final response = await _dioService.get(
      '/api/hospital/admissions/by-number/$number',
    );
    return Admission.fromJson(response.data);
  }

  @override
  Future<Admission> admit(Admission data) async {
    final response = await _dioService.post(
      '/api/hospital/admissions/admit',
      data: data.toJson(),
    );
    return Admission.fromJson(response.data);
  }

  @override
  Future<List<Admission>> getAdmissions({
    String? searchTerm,
    String? patientId,
    String? doctorId,
    String? departmentId,
    String? wardId,
    String? status,
    String? type,
    DateTime? fromDate,
    DateTime? toDate,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final queryParameters = {
      if (searchTerm != null) 'searchTerm': searchTerm,
      if (patientId != null) 'patientId': patientId,
      if (doctorId != null) 'doctorId': doctorId,
      if (departmentId != null) 'departmentId': departmentId,
      if (wardId != null) 'wardId': wardId,
      if (status != null) 'status': status,
      if (type != null) 'type': type,
      if (fromDate != null) 'fromDate': formatDateTimeToUtcIso(fromDate),
      if (toDate != null) 'toDate': formatDateTimeToUtcIso(toDate),
      if (pageNumber != null) 'pageNumber': pageNumber,
      if (pageSize != null) 'pageSize': pageSize,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortDescending != null) 'sortDescending': sortDescending,
    };
    final response = await _dioService.get(
      '/api/hospital/admissions',
      queryParameters: queryParameters,
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<Admission>((e) => Admission.fromJson(e))
        .toList();
  }
}
