import '../../../common.dart';

class RealErService implements ErService {
  final DioService _dioService;
  RealErService(this._dioService);

  @override
  Future<ErAmbulanceCall> postAmbulanceCallsByidPickup(
    String id,
    ErAmbulanceCall data, {
    String? pickupTime,
  }) async {
    final response = await _dioService.post(
      '/api/hospital/er/ambulance-calls/$id/pickup',
      data: data.toJson(),
      queryParameters: {if (pickupTime != null) 'pickupTime': pickupTime},
    );
    return ErAmbulanceCall.fromJson(response.data);
  }

  @override
  Future<ErAmbulanceCall> postAmbulanceCallsByidArrival(
    String id,
    ErAmbulanceCall data, {
    String? arrivalTime,
  }) async {
    final response = await _dioService.post(
      '/api/hospital/er/ambulance-calls/$id/arrival',
      data: data.toJson(),
      queryParameters: {if (arrivalTime != null) 'arrivalTime': arrivalTime},
    );
    return ErAmbulanceCall.fromJson(response.data);
  }

  @override
  Future<ErAmbulanceCall> postAmbulanceCallsByidLinkErByerregistrationid(
    String id,
    String erRegistrationId,
    ErAmbulanceCall data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/er/ambulance-calls/$id/link-er/$erRegistrationId',
      data: data.toJson(),
    );
    return ErAmbulanceCall.fromJson(response.data);
  }

  @override
  Future<ErAmbulanceCall> getAmbulanceCallsByid(String id) async {
    final response = await _dioService.get(
      '/api/hospital/er/ambulance-calls/$id',
    );
    return ErAmbulanceCall.fromJson(response.data);
  }

  @override
  Future<List<ErAmbulanceCall>?> ambulanceCalls() async {
    final response = await _dioService.get('/api/hospital/er/ambulance-calls');
    return (response.data as List<dynamic>)
        .map((e) => ErAmbulanceCall.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<ErAmbulanceCall>> postAmbulancecalls(ErAmbulanceCall data) async {
    final response = await _dioService.post(
      '/api/hospital/er/ambulance-calls',
      data: data.toJson(),
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<ErAmbulanceCall>((e) => ErAmbulanceCall.fromJson(e))
        .toList();
  }

  @override
  Future<List<ErBed>> getBedsAvailable() async {
    final response = await _dioService.get('/api/hospital/er/beds/available');
    return (response.data as List).map((e) => ErBed.fromJson(e)).toList();
  }

  @override
  Future<ErBed> postBedsByidStatus(
    String id,
    ErBed data, {
    String? status,
  }) async {
    final response = await _dioService.post(
      '/api/hospital/er/beds/$id/status',
      data: data.toJson(),
      queryParameters: {if (status != null) 'status': status},
    );
    return ErBed.fromJson(response.data);
  }

  @override
  Future<ErBed> getBedsByid(String id) async {
    final response = await _dioService.get('/api/hospital/er/beds/$id');
    return ErBed.fromJson(response.data);
  }

  @override
  Future<ErBed> putBedsByid(String id, ErBed data) async {
    final response = await _dioService.put(
      '/api/hospital/er/beds/$id',
      data: data.toJson(),
    );
    return ErBed.fromJson(response.data);
  }

  @override
  Future<List<ErBed>> beds() async {
    final response = await _dioService.get('/api/hospital/er/beds');
    return (response.data as List).map((e) => ErBed.fromJson(e)).toList();
  }

  @override
  Future<List<ErBed>> postBeds(ErBed data) async {
    final response = await _dioService.post(
      '/api/hospital/er/beds',
      data: data.toJson(),
    );
    return (response.data as List).map((e) => ErBed.fromJson(e)).toList();
  }

  @override
  Future<ErRegistration> postRegistrationsByidDisposition(
    String id,
    ErRegistration data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/er/registrations/$id/disposition',
      data: data.toJson(),
    );
    return ErRegistration.fromJson(response.data);
  }

  @override
  Future<ErRegistration> getRegistrationsByid(String id) async {
    final response = await _dioService.get(
      '/api/hospital/er/registrations/$id',
    );
    return ErRegistration.fromJson(response.data);
  }

  @override
  Future<ErRegistration> putRegistrationsByid(
    String id,
    ErRegistration data,
  ) async {
    final response = await _dioService.put(
      '/api/hospital/er/registrations/$id',
      data: data.toJson(),
    );
    return ErRegistration.fromJson(response.data);
  }

  @override
  Future<ErRegistration> deleteRegistrationsByid(String id) async {
    final response = await _dioService.delete(
      '/api/hospital/er/registrations/$id',
    );
    return ErRegistration.fromJson(response.data);
  }

  @override
  Future<ErRegistration> getRegistrationsByNumberByernumber(
    String ernumber,
  ) async {
    final response = await _dioService.get(
      '/api/hospital/er/registrations/by-number/$ernumber',
    );
    return ErRegistration.fromJson(response.data);
  }

  @override
  Future<ErRegistration> postRegistrationsRegister(ErRegistration data) async {
    final response = await _dioService.post(
      '/api/hospital/er/registrations/register',
      data: data.toJson(),
    );
    return ErRegistration.fromJson(response.data);
  }

  @override
  Future<List<ErRegistration>> getRegistrations({
    String? searchTerm,
    String? patientId,
    String? status,
    String? arrivalMode,
    String? triageLevel,
    DateTime? arrivalFrom,
    DateTime? arrivalTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/er/registrations',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (patientId != null) 'patientId': patientId,
        if (status != null) 'status': status,
        if (arrivalMode != null) 'arrivalMode': arrivalMode,
        if (triageLevel != null) 'triageLevel': triageLevel,
        if (arrivalFrom != null)
          'arrivalFrom': formatDateTimeToUtcIso(arrivalFrom),
        if (arrivalTo != null) 'arrivalTo': formatDateTimeToUtcIso(arrivalTo),
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<ErRegistration>((e) => ErRegistration.fromJson(e))
        .toList();
  }

  @override
  Future<ErTreatment> postTreatmentsByidComplete(
    String id,
    ErTreatment data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/er/treatments/$id/complete',
      data: data.toJson(),
    );
    return ErTreatment.fromJson(response.data);
  }

  @override
  Future<ErTreatment> getTreatmentsByid(String id) async {
    final response = await _dioService.get('/api/hospital/er/treatments/$id');
    return ErTreatment.fromJson(response.data);
  }

  @override
  Future<ErTreatment> getTreatmentsByRegistrationByregistrationid(
    String registrationid,
  ) async {
    final response = await _dioService.get(
      '/api/hospital/er/treatments/by-registration/$registrationid',
    );
    return ErTreatment.fromJson(response.data);
  }

  @override
  Future<ErTreatment> postTreatmentsStart(ErTreatment data) async {
    final response = await _dioService.post(
      '/api/hospital/er/treatments/start',
      data: data.toJson(),
    );
    return ErTreatment.fromJson(response.data);
  }

  @override
  Future<List<ErTreatment>> treatments() async {
    final response = await _dioService.get('/api/hospital/er/treatments');
    return (response.data as List).map((e) => ErTreatment.fromJson(e)).toList();
  }

  @override
  Future<ErTriage> getTriagesByid(String id) async {
    final response = await _dioService.get('/api/hospital/er/triages/$id');
    return ErTriage.fromJson(response.data);
  }

  @override
  Future<ErTriage> getTriagesByRegistrationByregistrationid(
    String registrationid,
  ) async {
    final response = await _dioService.get(
      '/api/hospital/er/triages/by-registration/$registrationid',
    );
    return ErTriage.fromJson(response.data);
  }

  @override
  Future<List<ErTriage>> triages() async {
    final response = await _dioService.get('/api/hospital/er/triages');
    return (response.data as List).map((e) => ErTriage.fromJson(e)).toList();
  }

  @override
  Future<List<ErTriage>> postTriages(ErTriage data) async {
    final response = await _dioService.post(
      '/api/hospital/er/triages',
      data: data.toJson(),
    );
    return (response.data as List).map((e) => ErTriage.fromJson(e)).toList();
  }

  @override
  Future<int> getRegistrationsTotalCount({
    String? searchTerm,
    String? patientId,
    String? status,
    String? arrivalMode,
    String? triageLevel,
    DateTime? arrivalFrom,
    DateTime? arrivalTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/er/registrations',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (patientId != null) 'patientId': patientId,
        if (status != null) 'status': status,
        if (arrivalMode != null) 'arrivalMode': arrivalMode,
        if (triageLevel != null) 'triageLevel': triageLevel,
        if (arrivalFrom != null)
          'arrivalFrom': formatDateTimeToUtcIso(arrivalFrom),
        if (arrivalTo != null) 'arrivalTo': formatDateTimeToUtcIso(arrivalTo),
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['totalCount'] as int;
  }
}
