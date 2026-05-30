class InsurancePreauthorization {
  final String? approvalNumber;
  final double? approvedAmount;
  final String? validFrom;
  final String? validTo;
  final String? remarks;
  final String? rejectionReason;
  final String? serviceRequested;
  final double? estimatedCost;
  final String? patientId;
  final String? insurancePlanId;

  InsurancePreauthorization({
    this.approvalNumber,
    this.approvedAmount,
    this.validFrom,
    this.validTo,
    this.remarks,
    this.rejectionReason,
    this.serviceRequested,
    this.estimatedCost,
    this.patientId,
    this.insurancePlanId,
  });

  factory InsurancePreauthorization.fromJson(Map<String, dynamic> json) {
    return InsurancePreauthorization(
      approvalNumber: json['approvalNumber'],
      approvedAmount: json['approvedAmount'],
      validFrom: json['validFrom'],
      validTo: json['validTo'],
      remarks: json['remarks'],
      rejectionReason: json['rejectionReason'],
      serviceRequested: json['serviceRequested'],
      estimatedCost: json['estimatedCost'],
      patientId: json['patientId'],
      insurancePlanId: json['insurancePlanId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'approvalNumber': approvalNumber,
      'approvedAmount': approvedAmount,
      'validFrom': validFrom,
      'validTo': validTo,
      'remarks': remarks,
      'rejectionReason': rejectionReason,
      'serviceRequested': serviceRequested,
      'estimatedCost': estimatedCost,
      'patientId': patientId,
      'insurancePlanId': insurancePlanId,
    };
  }

  InsurancePreauthorization copyWith({
    String? approvalNumber,
    double? approvedAmount,
    String? validFrom,
    String? validTo,
    String? remarks,
    String? rejectionReason,
    String? serviceRequested,
    double? estimatedCost,
    String? patientId,
    String? insurancePlanId,
  }) {
    return InsurancePreauthorization(
      approvalNumber: approvalNumber ?? this.approvalNumber,
      approvedAmount: approvedAmount ?? this.approvedAmount,
      validFrom: validFrom ?? this.validFrom,
      validTo: validTo ?? this.validTo,
      remarks: remarks ?? this.remarks,
      rejectionReason: rejectionReason ?? this.rejectionReason,
      serviceRequested: serviceRequested ?? this.serviceRequested,
      estimatedCost: estimatedCost ?? this.estimatedCost,
      patientId: patientId ?? this.patientId,
      insurancePlanId: insurancePlanId ?? this.insurancePlanId,
    );
  }

  @override
  String toString() {
    return 'InsurancePreauthorization(approvalNumber: $approvalNumber, approvedAmount: $approvedAmount, validFrom: $validFrom, validTo: $validTo, remarks: $remarks, rejectionReason: $rejectionReason, serviceRequested: $serviceRequested, estimatedCost: $estimatedCost, patientId: $patientId, insurancePlanId: $insurancePlanId)';
  }
}
