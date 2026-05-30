class InsuranceClaim {
  final double? approvedAmount;
  final String? notes;
  final String? rejectionReason;
  final double? paidAmount;
  final String? paymentDate;
  final String? serviceDate;
  final String? serviceProviderId;
  final String? diagnosisCodes;
  final String? procedureCodes;
  final double? totalAmount;
  final double? claimedAmount;
  final String? patientId;
  final String? insurancePlanId;

  InsuranceClaim({
    this.approvedAmount,
    this.notes,
    this.rejectionReason,
    this.paidAmount,
    this.paymentDate,
    this.serviceDate,
    this.serviceProviderId,
    this.diagnosisCodes,
    this.procedureCodes,
    this.totalAmount,
    this.claimedAmount,
    this.patientId,
    this.insurancePlanId,
  });

  factory InsuranceClaim.fromJson(Map<String, dynamic> json) {
    return InsuranceClaim(
      approvedAmount: json['approvedAmount'],
      notes: json['notes'],
      rejectionReason: json['rejectionReason'],
      paidAmount: json['paidAmount'],
      paymentDate: json['paymentDate'],
      serviceDate: json['serviceDate'],
      serviceProviderId: json['serviceProviderId'],
      diagnosisCodes: json['diagnosisCodes'],
      procedureCodes: json['procedureCodes'],
      totalAmount: json['totalAmount'],
      claimedAmount: json['claimedAmount'],
      patientId: json['patientId'],
      insurancePlanId: json['insurancePlanId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'approvedAmount': approvedAmount,
      'notes': notes,
      'rejectionReason': rejectionReason,
      'paidAmount': paidAmount,
      'paymentDate': paymentDate,
      'serviceDate': serviceDate,
      'serviceProviderId': serviceProviderId,
      'diagnosisCodes': diagnosisCodes,
      'procedureCodes': procedureCodes,
      'totalAmount': totalAmount,
      'claimedAmount': claimedAmount,
      'patientId': patientId,
      'insurancePlanId': insurancePlanId,
    };
  }

  InsuranceClaim copyWith({
    double? approvedAmount,
    String? notes,
    String? rejectionReason,
    double? paidAmount,
    String? paymentDate,
    String? serviceDate,
    String? serviceProviderId,
    String? diagnosisCodes,
    String? procedureCodes,
    double? totalAmount,
    double? claimedAmount,
    String? patientId,
    String? insurancePlanId,
  }) {
    return InsuranceClaim(
      approvedAmount: approvedAmount ?? this.approvedAmount,
      notes: notes ?? this.notes,
      rejectionReason: rejectionReason ?? this.rejectionReason,
      paidAmount: paidAmount ?? this.paidAmount,
      paymentDate: paymentDate ?? this.paymentDate,
      serviceDate: serviceDate ?? this.serviceDate,
      serviceProviderId: serviceProviderId ?? this.serviceProviderId,
      diagnosisCodes: diagnosisCodes ?? this.diagnosisCodes,
      procedureCodes: procedureCodes ?? this.procedureCodes,
      totalAmount: totalAmount ?? this.totalAmount,
      claimedAmount: claimedAmount ?? this.claimedAmount,
      patientId: patientId ?? this.patientId,
      insurancePlanId: insurancePlanId ?? this.insurancePlanId,
    );
  }

  @override
  String toString() {
    return 'InsuranceClaim(approvedAmount: $approvedAmount, notes: $notes, rejectionReason: $rejectionReason, paidAmount: $paidAmount, paymentDate: $paymentDate, serviceDate: $serviceDate, serviceProviderId: $serviceProviderId, diagnosisCodes: $diagnosisCodes, procedureCodes: $procedureCodes, totalAmount: $totalAmount, claimedAmount: $claimedAmount, patientId: $patientId, insurancePlanId: $insurancePlanId)';
  }
}
