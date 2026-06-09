class LabOrderTest {
  final String? id;
  final String? tenantId;
  final String? labOrderId;
  final String? testId;
  final String? testName;
  final String? testCode;
  final String? result;
  final String? unit;
  final String? referenceRange;
  final bool? isAbnormal;
  final String? abnormalFlag;
  final String? status;
  final String? notes;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  LabOrderTest({
    this.id,
    this.tenantId,
    this.labOrderId,
    this.testId,
    this.testName,
    this.testCode,
    this.result,
    this.unit,
    this.referenceRange,
    this.isAbnormal,
    this.abnormalFlag,
    this.status,
    this.notes,
    this.createdAt,
    this.updatedAt,
  });

  factory LabOrderTest.fromJson(Map<String, dynamic> json) {
    return LabOrderTest(
      id: json['id'] as String?,
      tenantId: json['tenantId'] as String?,
      labOrderId: json['labOrderId'] as String?,
      testId: json['testId'] as String?,
      testName: json['testName'] as String?,
      testCode: json['testCode'] as String?,
      result: json['result'] as String?,
      unit: json['unit'] as String?,
      referenceRange: json['referenceRange'] as String?,
      isAbnormal: json['isAbnormal'] as bool?,
      abnormalFlag: json['abnormalFlag'] as String?,
      status: json['status'] as String?,
      notes: json['notes'] as String?,
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
      'labOrderId': labOrderId,
      'testId': testId,
      'testName': testName,
      'testCode': testCode,
      'result': result,
      'unit': unit,
      'referenceRange': referenceRange,
      'isAbnormal': isAbnormal,
      'abnormalFlag': abnormalFlag,
      'status': status,
      'notes': notes,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  LabOrderTest copyWith({
    String? id,
    String? tenantId,
    String? labOrderId,
    String? testId,
    String? testName,
    String? testCode,
    String? result,
    String? unit,
    String? referenceRange,
    bool? isAbnormal,
    String? abnormalFlag,
    String? status,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return LabOrderTest(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      labOrderId: labOrderId ?? this.labOrderId,
      testId: testId ?? this.testId,
      testName: testName ?? this.testName,
      testCode: testCode ?? this.testCode,
      result: result ?? this.result,
      unit: unit ?? this.unit,
      referenceRange: referenceRange ?? this.referenceRange,
      isAbnormal: isAbnormal ?? this.isAbnormal,
      abnormalFlag: abnormalFlag ?? this.abnormalFlag,
      status: status ?? this.status,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'LabOrderTest(id: $id, tenantId: $tenantId, labOrderId: $labOrderId, testId: $testId, testName: $testName, testCode: $testCode, result: $result, unit: $unit, referenceRange: $referenceRange, isAbnormal: $isAbnormal, abnormalFlag: $abnormalFlag, status: $status, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
