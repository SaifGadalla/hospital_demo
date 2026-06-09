import '../../../common.dart';

class RealInsuranceService implements InsuranceService {
  final DioService _dioService;
  RealInsuranceService(this._dioService);

  @override
  Future<InsuranceClaim> postClaimsByidSubmit(
    String id,
    InsuranceClaim data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/insurance/claims/$id/submit',
      data: data.toJson(),
    );
    return InsuranceClaim.fromJson(response.data);
  }

  @override
  Future<InsuranceClaim> postClaimsByidApprove(
    String id,
    InsuranceClaim data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/insurance/claims/$id/approve',
      data: data.toJson(),
    );
    return InsuranceClaim.fromJson(response.data);
  }

  @override
  Future<InsuranceClaim> postClaimsByidReject(
    String id,
    InsuranceClaim data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/insurance/claims/$id/reject',
      data: data.toJson(),
    );
    return InsuranceClaim.fromJson(response.data);
  }

  @override
  Future<InsuranceClaim> postClaimsByidPayment(
    String id,
    InsuranceClaim data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/insurance/claims/$id/payment',
      data: data.toJson(),
    );
    return InsuranceClaim.fromJson(response.data);
  }

  @override
  Future<InsuranceClaim> getClaimsByid(String id) async {
    final response = await _dioService.get(
      '/api/hospital/insurance/claims/$id',
    );
    return InsuranceClaim.fromJson(response.data);
  }

  @override
  Future<InsuranceClaim> putClaimsByid(String id, InsuranceClaim data) async {
    final response = await _dioService.put(
      '/api/hospital/insurance/claims/$id',
      data: data.toJson(),
    );
    return InsuranceClaim.fromJson(response.data);
  }

  @override
  Future<InsuranceClaim> deleteClaimsByid(String id) async {
    final response = await _dioService.delete(
      '/api/hospital/insurance/claims/$id',
    );
    return InsuranceClaim.fromJson(response.data);
  }

  @override
  Future<InsuranceClaim> getClaimsByNumberByclaimnumber(
    String claimnumber,
  ) async {
    final response = await _dioService.get(
      '/api/hospital/insurance/claims/by-number/$claimnumber',
    );
    return InsuranceClaim.fromJson(response.data);
  }

  @override
  Future<List<InsuranceClaim>> getInsuranceClaims({
    String? searchTerm,
    String? patientId,
    String? insurancePlanId,
    String? serviceProviderId,
    String? status,
    DateTime? serviceDateFrom,
    DateTime? serviceDateTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/insurance/claims',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (patientId != null) 'patientId': patientId,
        if (insurancePlanId != null) 'insurancePlanId': insurancePlanId,
        if (serviceProviderId != null) 'serviceProviderId': serviceProviderId,
        if (status != null) 'status': status,
        if (serviceDateFrom != null)
          'serviceDateFrom': formatDateTimeToUtcIso(serviceDateFrom),
        if (serviceDateTo != null)
          'serviceDateTo': formatDateTimeToUtcIso(serviceDateTo),
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<InsuranceClaim>((e) => InsuranceClaim.fromJson(e))
        .toList();
  }

  @override
  Future<List<InsuranceClaim>> postClaims(InsuranceClaim data) async {
    final response = await _dioService.post(
      '/api/hospital/insurance/claims',
      data: data.toJson(),
    );
    return (response.data as List)
        .map((e) => InsuranceClaim.fromJson(e))
        .toList();
  }

  @override
  Future<InsurancePlan> getPlansByid(String id) async {
    final response = await _dioService.get('/api/hospital/insurance/plans/$id');
    return InsurancePlan.fromJson(response.data);
  }

  @override
  Future<InsurancePlan> putPlansByid(String id, InsurancePlan data) async {
    final response = await _dioService.put(
      '/api/hospital/insurance/plans/$id',
      data: data.toJson(),
    );
    return InsurancePlan.fromJson(response.data);
  }

  @override
  Future<InsurancePlan> deletePlansByid(String id) async {
    final response = await _dioService.delete(
      '/api/hospital/insurance/plans/$id',
    );
    return InsurancePlan.fromJson(response.data);
  }

  @override
  Future<InsurancePlan> getPlansByCodeBycode(String code) async {
    final response = await _dioService.get(
      '/api/hospital/insurance/plans/by-code/$code',
    );
    return InsurancePlan.fromJson(response.data);
  }

  @override
  Future<List<InsurancePlan>> plans({
    String? searchTerm,
    String? coverageType,
    bool? isActive,
    String? insuranceCompanyId,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/insurance/plans',
      queryParameters: {
        if (searchTerm != null) 'SearchTerm': searchTerm,
        if (coverageType != null) 'CoverageType': coverageType,
        if (isActive != null) 'IsActive': isActive,
        if (insuranceCompanyId != null)
          'InsuranceCompanyId': insuranceCompanyId,
        if (pageNumber != null) 'PageNumber': pageNumber,
        if (pageSize != null) 'PageSize': pageSize,
        if (sortBy != null) 'SortBy': sortBy,
        if (sortDescending != null) 'SortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<InsurancePlan>((e) => InsurancePlan.fromJson(e))
        .toList();
  }

  @override
  Future<List<InsurancePlan>> postPlans(InsurancePlan data) async {
    final response = await _dioService.post(
      '/api/hospital/insurance/plans',
      data: data.toJson(),
    );
    return (response.data as List)
        .map((e) => InsurancePlan.fromJson(e))
        .toList();
  }

  @override
  Future<InsurancePreauthorization> postPreauthorizationsByidApprove(
    String id,
    InsurancePreauthorization data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/insurance/preauthorizations/$id/approve',
      data: data.toJson(),
    );
    return InsurancePreauthorization.fromJson(response.data);
  }

  @override
  Future<InsurancePreauthorization> postPreauthorizationsByidReject(
    String id,
    InsurancePreauthorization data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/insurance/preauthorizations/$id/reject',
      data: data.toJson(),
    );
    return InsurancePreauthorization.fromJson(response.data);
  }

  @override
  Future<InsurancePreauthorization> getPreauthorizationsByid(String id) async {
    final response = await _dioService.get(
      '/api/hospital/insurance/preauthorizations/$id',
    );
    return InsurancePreauthorization.fromJson(response.data);
  }

  @override
  Future<InsurancePreauthorization> putPreauthorizationsByid(
    String id,
    InsurancePreauthorization data,
  ) async {
    final response = await _dioService.put(
      '/api/hospital/insurance/preauthorizations/$id',
      data: data.toJson(),
    );
    return InsurancePreauthorization.fromJson(response.data);
  }

  @override
  Future<InsurancePreauthorization> deletePreauthorizationsByid(
    String id,
  ) async {
    final response = await _dioService.delete(
      '/api/hospital/insurance/preauthorizations/$id',
    );
    return InsurancePreauthorization.fromJson(response.data);
  }

  @override
  Future<InsurancePreauthorization> getPreauthorizationsByNumberByauthnumber(
    String authnumber,
  ) async {
    final response = await _dioService.get(
      '/api/hospital/insurance/preauthorizations/by-number/$authnumber',
    );
    return InsurancePreauthorization.fromJson(response.data);
  }

  @override
  Future<List<InsurancePreauthorization>> preauthorizations({
    String? searchTerm,
    String? patientId,
    String? insurancePlanId,
    String? approvalStatus,
    DateTime? requestDateFrom,
    DateTime? requestDateTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/insurance/preauthorizations',
      queryParameters: {
        if (searchTerm != null) 'SearchTerm': searchTerm,
        if (patientId != null) 'PatientId': patientId,
        if (insurancePlanId != null) 'InsurancePlanId': insurancePlanId,
        if (approvalStatus != null) 'ApprovalStatus': approvalStatus,
        if (requestDateFrom != null)
          'RequestDateFrom': formatDateTimeToUtcIso(requestDateFrom),
        if (requestDateTo != null)
          'RequestDateTo': formatDateTimeToUtcIso(requestDateTo),
        if (pageNumber != null) 'PageNumber': pageNumber,
        if (pageSize != null) 'PageSize': pageSize,
        if (sortBy != null) 'SortBy': sortBy,
        if (sortDescending != null) 'SortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<InsurancePreauthorization>(
          (e) => InsurancePreauthorization.fromJson(e),
        )
        .toList();
  }

  @override
  Future<List<InsurancePreauthorization>> postPreauthorizations(
    InsurancePreauthorization data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/insurance/preauthorizations',
      data: data.toJson(),
    );
    return (response.data as List)
        .map((e) => InsurancePreauthorization.fromJson(e))
        .toList();
  }
}
