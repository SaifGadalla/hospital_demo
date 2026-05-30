class LabOrderTest {
  final String? result;
  final String? unit;
  final String? referenceRange;
  final String? abnormalFlag;
  final String? labOrderId;
  final String? testId;
  final String? testName;
  final String? testCode;
  final bool? isAbnormal;
  final String? status;
  final String? notes;

  LabOrderTest({
    this.result,
    this.unit,
    this.referenceRange,
    this.abnormalFlag,
    this.labOrderId,
    this.testId,
    this.testName,
    this.testCode,
    this.isAbnormal,
    this.status,
    this.notes,
  });

  factory LabOrderTest.fromJson(Map<String, dynamic> json) {
    return LabOrderTest(
      result: json['result'],
      unit: json['unit'],
      referenceRange: json['referenceRange'],
      abnormalFlag: json['abnormalFlag'],
      labOrderId: json['labOrderId'],
      testId: json['testId'],
      testName: json['testName'],
      testCode: json['testCode'],
      isAbnormal: json['isAbnormal'],
      status: json['status'],
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'result': result,
      'unit': unit,
      'referenceRange': referenceRange,
      'abnormalFlag': abnormalFlag,
      'labOrderId': labOrderId,
      'testId': testId,
      'testName': testName,
      'testCode': testCode,
      'isAbnormal': isAbnormal,
      'status': status,
      'notes': notes,
    };
  }

  LabOrderTest copyWith({
    String? result,
    String? unit,
    String? referenceRange,
    String? abnormalFlag,
    String? labOrderId,
    String? testId,
    String? testName,
    String? testCode,
    bool? isAbnormal,
    String? status,
    String? notes,
  }) {
    return LabOrderTest(
      result: result ?? this.result,
      unit: unit ?? this.unit,
      referenceRange: referenceRange ?? this.referenceRange,
      abnormalFlag: abnormalFlag ?? this.abnormalFlag,
      labOrderId: labOrderId ?? this.labOrderId,
      testId: testId ?? this.testId,
      testName: testName ?? this.testName,
      testCode: testCode ?? this.testCode,
      isAbnormal: isAbnormal ?? this.isAbnormal,
      status: status ?? this.status,
      notes: notes ?? this.notes,
    );
  }

  @override
  String toString() {
    return 'LabOrderTest(result: $result, unit: $unit, referenceRange: $referenceRange, abnormalFlag: $abnormalFlag, labOrderId: $labOrderId, testId: $testId, testName: $testName, testCode: $testCode, isAbnormal: $isAbnormal, status: $status, notes: $notes)';
  }
}
