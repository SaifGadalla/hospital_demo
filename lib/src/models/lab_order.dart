class LabOrder {
  final String? status;
  final String? sampleBarcode;
  final String? approvedById;
  final String? patientId;
  final String? doctorId;
  final String? orderDate;
  final String? appointmentId;
  final String? priority;
  final String? clinicalIndication;
  final String? specimenType;
  final String? sampleCollectionDate;
  final String? resultDate;
  final String? resultApprovedById;
  final List<Map<String, dynamic>>? tests;

  LabOrder({
    this.status,
    this.sampleBarcode,
    this.approvedById,
    this.patientId,
    this.doctorId,
    this.orderDate,
    this.appointmentId,
    this.priority,
    this.clinicalIndication,
    this.specimenType,
    this.sampleCollectionDate,
    this.resultDate,
    this.resultApprovedById,
    this.tests,
  });

  factory LabOrder.fromJson(Map<String, dynamic> json) {
    return LabOrder(
      status: json['status'],
      sampleBarcode: json['sampleBarcode'],
      approvedById: json['approvedById'],
      patientId: json['patientId'],
      doctorId: json['doctorId'],
      orderDate: json['orderDate'],
      appointmentId: json['appointmentId'],
      priority: json['priority'],
      clinicalIndication: json['clinicalIndication'],
      specimenType: json['specimenType'],
      sampleCollectionDate: json['sampleCollectionDate'],
      resultDate: json['resultDate'],
      resultApprovedById: json['resultApprovedById'],
      tests: json['tests'] != null ? List<Map<String, dynamic>>.from(json['tests']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'sampleBarcode': sampleBarcode,
      'approvedById': approvedById,
      'patientId': patientId,
      'doctorId': doctorId,
      'orderDate': orderDate,
      'appointmentId': appointmentId,
      'priority': priority,
      'clinicalIndication': clinicalIndication,
      'specimenType': specimenType,
      'sampleCollectionDate': sampleCollectionDate,
      'resultDate': resultDate,
      'resultApprovedById': resultApprovedById,
      'tests': tests,
    };
  }

  LabOrder copyWith({
    String? status,
    String? sampleBarcode,
    String? approvedById,
    String? patientId,
    String? doctorId,
    String? orderDate,
    String? appointmentId,
    String? priority,
    String? clinicalIndication,
    String? specimenType,
    String? sampleCollectionDate,
    String? resultDate,
    String? resultApprovedById,
    List<Map<String, dynamic>>? tests,
  }) {
    return LabOrder(
      status: status ?? this.status,
      sampleBarcode: sampleBarcode ?? this.sampleBarcode,
      approvedById: approvedById ?? this.approvedById,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      orderDate: orderDate ?? this.orderDate,
      appointmentId: appointmentId ?? this.appointmentId,
      priority: priority ?? this.priority,
      clinicalIndication: clinicalIndication ?? this.clinicalIndication,
      specimenType: specimenType ?? this.specimenType,
      sampleCollectionDate: sampleCollectionDate ?? this.sampleCollectionDate,
      resultDate: resultDate ?? this.resultDate,
      resultApprovedById: resultApprovedById ?? this.resultApprovedById,
      tests: tests ?? this.tests,
    );
  }

  @override
  String toString() {
    return 'LabOrder(status: $status, sampleBarcode: $sampleBarcode, approvedById: $approvedById, patientId: $patientId, doctorId: $doctorId, orderDate: $orderDate, appointmentId: $appointmentId, priority: $priority, clinicalIndication: $clinicalIndication, specimenType: $specimenType, sampleCollectionDate: $sampleCollectionDate, resultDate: $resultDate, resultApprovedById: $resultApprovedById, tests: $tests)';
  }
}
