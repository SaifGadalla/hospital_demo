import '../../../common.dart';

class RealLabOrdersService implements LabOrdersService {
  final DioService _dioService;
  RealLabOrdersService(this._dioService);

  @override
  Future<LabOrder> statusLabOrder(String id, LabOrder data) async {
    final response = await _dioService.post(
      '/api/hospital/lab-orders/$id/status',
      data: data.toJson(),
    );
    return LabOrder.fromJson(response.data);
  }

  @override
  Future<LabOrder> collectSampleLabOrder(String id, LabOrder data) async {
    final response = await _dioService.post(
      '/api/hospital/lab-orders/$id/collect-sample',
      data: data.toJson(),
    );
    return LabOrder.fromJson(response.data);
  }

  @override
  Future<LabOrder> approveResultsLabOrder(String id, LabOrder data) async {
    final response = await _dioService.post(
      '/api/hospital/lab-orders/$id/approve-results',
      data: data.toJson(),
    );
    return LabOrder.fromJson(response.data);
  }

  @override
  Future<LabOrder> getLabOrderById(String id) async {
    final response = await _dioService.get('/api/hospital/lab-orders/$id');
    return LabOrder.fromJson(response.data);
  }

  @override
  Future<LabOrder> updateLabOrder(String id, LabOrder data) async {
    final response = await _dioService.put(
      '/api/hospital/lab-orders/$id',
      data: data.toJson(),
    );
    return LabOrder.fromJson(response.data);
  }

  @override
  Future<LabOrder> deleteLabOrder(String id) async {
    final response = await _dioService.delete('/api/hospital/lab-orders/$id');
    return LabOrder.fromJson(response.data);
  }

  @override
  Future<LabOrder> getLabOrdersNumber(String ordernumber) async {
    final response = await _dioService.get(
      '/api/hospital/lab-orders/by-number/$ordernumber',
    );
    return LabOrder.fromJson(response.data);
  }

  @override
  Future<LabOrder> getPatientBypatientid(String patientid) async {
    final response = await _dioService.get(
      '/api/hospital/lab-orders/patient/$patientid',
    );
    return LabOrder.fromJson(response.data);
  }

  @override
  Future<List<LabOrder>> getLabOrders({
    String? searchTerm,
    String? patientId,
    String? doctorId,
    String? appointmentId,
    String? priority,
    String? status,
    DateTime? orderDateFrom,
    DateTime? orderDateTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    final response = await _dioService.get(
      '/api/hospital/lab-orders',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (patientId != null) 'patientId': patientId,
        if (doctorId != null) 'doctorId': doctorId,
        if (appointmentId != null) 'appointmentId': appointmentId,
        if (priority != null) 'priority': priority,
        if (status != null) 'status': status,
        if (orderDateFrom != null)
          'orderDateFrom': formatDateTimeToUtcIso(orderDateFrom),
        if (orderDateTo != null)
          'orderDateTo': formatDateTimeToUtcIso(orderDateTo),
        if (pageNumber != null) 'pageNumber': pageNumber,
        if (pageSize != null) 'pageSize': pageSize,
        if (sortBy != null) 'sortBy': sortBy,
        if (sortDescending != null) 'sortDescending': sortDescending,
      },
    );
    return (response.data as Map<String, dynamic>)['items']
        .map<LabOrder>((e) => LabOrder.fromJson(e))
        .toList();
  }

  @override
  Future<LabOrder> createLabOrder(LabOrder data) async {
    final response = await _dioService.post(
      '/api/hospital/lab-orders',
      data: data.toJson(),
    );
    return LabOrder.fromJson(response.data);
  }
}
