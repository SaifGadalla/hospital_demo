class InsurancePreauthorization {
  final String? id;
  final String? tenantId;
  final String? authNumber;
  final String? patientId;
  final String? patientName;
  final String? insurancePlanId;
  final String? insurancePlanName;
  final String? serviceRequested;
  final double? estimatedCost;
  final String? requestDate;
  final String? approvalStatus;
  final String? approvalNumber;
  final double? approvedAmount;
  final DateTime? validFrom;
  final DateTime? validTo;
  final String? remarks;
  final String? rejectionReason;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  InsurancePreauthorization({
    this.id,
    this.tenantId,
    this.authNumber,
    this.patientId,
    this.patientName,
    this.insurancePlanId,
    this.insurancePlanName,
    this.serviceRequested,
    this.estimatedCost,
    this.requestDate,
    this.approvalStatus,
    this.approvalNumber,
    this.approvedAmount,
    this.validFrom,
    this.validTo,
    this.remarks,
    this.rejectionReason,
    this.createdAt,
    this.updatedAt,
  });

  factory InsurancePreauthorization.fromJson(Map<String, dynamic> json) {
    return InsurancePreauthorization(
      id: json['id'],
      tenantId: json['tenantId'],
      authNumber: json['authNumber'],
      patientId: json['patientId'],
      patientName: json['patientName'],
      insurancePlanId: json['insurancePlanId'],
      insurancePlanName: json['insurancePlanName'],
      serviceRequested: json['serviceRequested'],
      estimatedCost: json['estimatedCost'],
      requestDate: json['requestDate'],
      approvalStatus: json['approvalStatus'],
      approvalNumber: json['approvalNumber'],
      approvedAmount: json['approvedAmount'],
      validFrom: json['validFrom'] != null
          ? DateTime.tryParse(json['validFrom'] as String)
          : null,
      validTo: json['validTo'] != null
          ? DateTime.tryParse(json['validTo'] as String)
          : null,
      remarks: json['remarks'],
      rejectionReason: json['rejectionReason'],
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.tryParse(json['updatedAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tenantId': tenantId,
      'authNumber': authNumber,
      'patientId': patientId,
      'patientName': patientName,
      'insurancePlanId': insurancePlanId,
      'insurancePlanName': insurancePlanName,
      'serviceRequested': serviceRequested,
      'estimatedCost': estimatedCost,
      'requestDate': requestDate,
      'approvalStatus': approvalStatus,
      'approvalNumber': approvalNumber,
      'approvedAmount': approvedAmount,
      'validFrom': validFrom,
      'validTo': validTo,
      'remarks': remarks,
      'rejectionReason': rejectionReason,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  InsurancePreauthorization copyWith({
    String? id,
    String? tenantId,
    String? authNumber,
    String? patientId,
    String? patientName,
    String? insurancePlanId,
    String? insurancePlanName,
    String? serviceRequested,
    double? estimatedCost,
    String? requestDate,
    String? approvalStatus,
    String? approvalNumber,
    double? approvedAmount,
    DateTime? validFrom,
    DateTime? validTo,
    String? remarks,
    String? rejectionReason,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return InsurancePreauthorization(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      authNumber: authNumber ?? this.authNumber,
      patientId: patientId,
      patientName: patientName,
      insurancePlanId: insurancePlanId,
      insurancePlanName: insurancePlanName,
      serviceRequested: serviceRequested,
      estimatedCost: estimatedCost,
      requestDate: requestDate,
      approvalStatus: approvalStatus,
      approvalNumber: approvalNumber,
      approvedAmount: approvedAmount,
      validFrom: validFrom,
      validTo: validTo,
      remarks: remarks,
      rejectionReason: rejectionReason,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  String toString() {
    return 'InsurancePreauthorization(id: $id, tenantId: $tenantId, authNumber: $authNumber, patientId: $patientId, patientName: $patientName, insurancePlanId: $insurancePlanId, insurancePlanName: $insurancePlanName, serviceRequested: $serviceRequested, estimatedCost: $estimatedCost, requestDate: $requestDate, approvalStatus: $approvalStatus, approvalNumber: $approvalNumber, approvedAmount: $approvedAmount, validFrom: $validFrom, validTo: $validTo, remarks: $remarks, rejectionReason: $rejectionReason, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
