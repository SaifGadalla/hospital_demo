import '../../../common.dart';

class RealPrescriptionsService implements PrescriptionsService {
  final DioService _dioService;
  RealPrescriptionsService(this._dioService);

  @override
  Future<Prescription> dispensePrescription(
    String id,
    Prescription data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/prescriptions/$id/dispense',
      data: data.toJson(),
    );
    return Prescription.fromJson(response.data);
  }

  @override
  Future<Prescription> cancelPrescription(String id, Prescription data) async {
    final response = await _dioService.post(
      '/api/hospital/prescriptions/$id/cancel',
      data: data.toJson(),
    );
    return Prescription.fromJson(response.data);
  }

  @override
  Future<Prescription> getPrescriptionById(String id) async {
    final response = await _dioService.get('/api/hospital/prescriptions/$id');
    return Prescription.fromJson(response.data);
  }

  @override
  Future<Prescription> updatePrescription(String id, Prescription data) async {
    final response = await _dioService.put(
      '/api/hospital/prescriptions/$id',
      data: data.toJson(),
    );
    return Prescription.fromJson(response.data);
  }

  @override
  Future<Prescription> deletePrescription(String id) async {
    final response = await _dioService.delete(
      '/api/hospital/prescriptions/$id',
    );
    return Prescription.fromJson(response.data);
  }

  @override
  Future<Prescription> getPrescriptionsNumber(String prescriptionnumber) async {
    final response = await _dioService.get(
      '/api/hospital/prescriptions/by-number/$prescriptionnumber',
    );
    return Prescription.fromJson(response.data);
  }

  @override
  Future<Prescription> getPatientBypatientid(String patientid) async {
    final response = await _dioService.get(
      '/api/hospital/prescriptions/patient/$patientid',
    );
    return Prescription.fromJson(response.data);
  }

  @override
  Future<List<Prescription>> getPrescriptions({
    String? searchTerm,
    String? patientId,
    String? doctorId,
    String? appointmentId,
    String? status,
    DateTime? prescriptionDateFrom,
    DateTime? prescriptionDateTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/prescriptions',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (patientId != null) 'patientId': patientId,
        if (doctorId != null) 'doctorId': doctorId,
        if (appointmentId != null) 'appointmentId': appointmentId,
        if (status != null) 'status': status,
        if (prescriptionDateFrom != null)
          'prescriptionDateFrom': formatDateTimeToUtcIso(prescriptionDateFrom),
        if (prescriptionDateTo != null)
          'prescriptionDateTo': formatDateTimeToUtcIso(prescriptionDateTo),
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<Prescription>((e) => Prescription.fromJson(e))
        .toList();
  }

  @override
  Future<Prescription> createPrescription(Prescription data) async {
    final response = await _dioService.post(
      '/api/hospital/prescriptions',
      data: data.toJson(),
    );
    return Prescription.fromJson(response.data);
  }
}
