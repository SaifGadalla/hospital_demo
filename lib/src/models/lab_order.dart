import '../../common.dart';

class LabOrder {
  final String? id;
  final String? tenantId;
  final String? orderNumber;
  final String? patientId;
  final String? doctorId;
  final DateTime? orderDate;
  final String? appointmentId;
  final String? priority;
  final String? status;
  final String? clinicalIndication;
  final String? specimenType;
  final DateTime? sampleCollectionDate;
  final String? sampleBarcode;
  final DateTime? resultDate;
  final String? resultApprovedById;
  final List<LabOrderTest>? tests;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  LabOrder({
    this.id,
    this.tenantId,
    this.orderNumber,
    this.patientId,
    this.doctorId,
    this.orderDate,
    this.appointmentId,
    this.priority,
    this.status,
    this.clinicalIndication,
    this.specimenType,
    this.sampleCollectionDate,
    this.sampleBarcode,
    this.resultDate,
    this.resultApprovedById,
    this.tests,
    this.createdAt,
    this.updatedAt,
  });

  factory LabOrder.fromJson(Map<String, dynamic> json) {
    return LabOrder(
      id: json['id'] as String?,
      tenantId: json['tenantId'] as String?,
      orderNumber: json['orderNumber'] as String?,
      patientId: json['patientId'] as String?,
      doctorId: json['doctorId'] as String?,
      orderDate: json['orderDate'] != null
          ? DateTime.parse(json['orderDate'])
          : null,
      appointmentId: json['appointmentId'] as String?,
      priority: json['priority'] as String?,
      status: json['status'] as String?,
      clinicalIndication: json['clinicalIndication'] as String?,
      specimenType: json['specimenType'] as String?,
      sampleCollectionDate: json['sampleCollectionDate'] != null
          ? DateTime.parse(json['sampleCollectionDate'])
          : null,
      sampleBarcode: json['sampleBarcode'] as String?,
      resultDate: json['resultDate'] != null
          ? DateTime.parse(json['resultDate'])
          : null,
      resultApprovedById: json['resultApprovedById'] as String?,
      tests: (json['tests'] as List<dynamic>?)
          ?.map((e) => LabOrderTest.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tenantId': tenantId,
      'orderNumber': orderNumber,
      'patientId': patientId,
      'doctorId': doctorId,
      'orderDate': orderDate?.toIso8601String(),
      'appointmentId': appointmentId,
      'priority': priority,
      'status': status,
      'clinicalIndication': clinicalIndication,
      'specimenType': specimenType,
      'sampleCollectionDate': sampleCollectionDate?.toIso8601String(),
      'sampleBarcode': sampleBarcode,
      'resultDate': resultDate?.toIso8601String(),
      'resultApprovedById': resultApprovedById,
      'tests': tests?.map((e) => e.toJson()).toList(),
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  LabOrder copyWith({
    String? id,
    String? tenantId,
    String? orderNumber,
    String? patientId,
    String? doctorId,
    DateTime? orderDate,
    String? appointmentId,
    String? priority,
    String? status,
    String? clinicalIndication,
    String? specimenType,
    DateTime? sampleCollectionDate,
    String? sampleBarcode,
    DateTime? resultDate,
    String? resultApprovedById,
    List<LabOrderTest>? tests,
  }) {
    return LabOrder(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      orderNumber: orderNumber ?? this.orderNumber,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      orderDate: orderDate ?? this.orderDate,
      appointmentId: appointmentId ?? this.appointmentId,
      priority: priority ?? this.priority,
      status: status ?? this.status,
      clinicalIndication: clinicalIndication ?? this.clinicalIndication,
      specimenType: specimenType ?? this.specimenType,
      sampleCollectionDate: sampleCollectionDate ?? this.sampleCollectionDate,
      sampleBarcode: sampleBarcode ?? this.sampleBarcode,
      resultDate: resultDate ?? this.resultDate,
      resultApprovedById: resultApprovedById ?? this.resultApprovedById,
      tests: tests ?? this.tests,
    );
  }

  @override
  String toString() {
    return 'LabOrder(id: $id, tenantId: $tenantId, orderNumber: $orderNumber, patientId: $patientId, doctorId: $doctorId, orderDate: $orderDate, appointmentId: $appointmentId, priority: $priority, status: $status, clinicalIndication: $clinicalIndication, specimenType: $specimenType, sampleCollectionDate: $sampleCollectionDate, sampleBarcode: $sampleBarcode, resultDate: $resultDate, resultApprovedById: $resultApprovedById, tests: $tests)';
  }
}
