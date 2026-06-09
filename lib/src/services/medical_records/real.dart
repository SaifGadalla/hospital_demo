import '../../../common.dart';

class RealMedicalRecordsService implements MedicalRecordsService {
  final DioService _dioService;
  RealMedicalRecordsService(this._dioService);

  @override
  Future<MedicalRecord> getMedicalRecordById(String id) async {
    final response = await _dioService.get('/api/hospital/medical-records/$id');
    return MedicalRecord.fromJson(response.data);
  }

  @override
  Future<MedicalRecord> updateMedicalRecord(
    String id,
    MedicalRecord data,
  ) async {
    final response = await _dioService.put(
      '/api/hospital/medical-records/$id',
      data: data.toJson(),
    );
    return MedicalRecord.fromJson(response.data);
  }

  @override
  Future<void> deleteMedicalRecord(String id) async {
    await _dioService.delete('/api/hospital/medical-records/$id');
  }

  @override
  Future<MedicalRecord> getPatientBypatientid(String patientid) async {
    final response = await _dioService.get(
      '/api/hospital/medical-records/patient/$patientid',
    );
    return MedicalRecord.fromJson(response.data);
  }

  @override
  Future<List<MedicalRecord>> getMedicalRecords({
    String? searchTerm,
    String? patientId,
    String? doctorId,
    String? appointmentId,
    DateTime? visitDateFrom,
    DateTime? visitDateTo,
    String? diagnosisCode,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/medical-records',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (patientId != null) 'patientId': patientId,
        if (doctorId != null) 'doctorId': doctorId,
        if (appointmentId != null) 'appointmentId': appointmentId,
        if (visitDateFrom != null)
          'visitDateFrom': formatDateTimeToUtcIso(visitDateFrom),
        if (visitDateTo != null)
          'visitDateTo': formatDateTimeToUtcIso(visitDateTo),
        if (diagnosisCode != null) 'diagnosisCode': diagnosisCode,
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<MedicalRecord>((e) => MedicalRecord.fromJson(e))
        .toList();
  }

  @override
  Future<MedicalRecord> createMedicalRecord(MedicalRecord data) async {
    final response = await _dioService.post(
      '/api/hospital/medical-records',
      data: data.toJson(),
    );
    return MedicalRecord.fromJson(response.data);
  }
}
