class InsuranceClaim {
  final String? id;
  final String? tenantId;
  final String? claimNumber;
  final String? patientId;
  final String? patientName;
  final String? insurancePlanId;
  final String? insurancePlanName;
  final DateTime? serviceDate;
  final String? serviceProviderId;
  final String? diagnosisCodes;
  final String? procedureCodes;
  final double? totalAmount;
  final double? claimedAmount;
  final DateTime? submissionDate;
  final String? status;
  final double? approvedAmount;
  final double? paidAmount;
  final String? rejectionReason;
  final DateTime? paymentDate;
  final String? notes;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  InsuranceClaim({
    this.id,
    this.tenantId,
    this.claimNumber,
    this.patientId,
    this.patientName,
    this.insurancePlanId,
    this.insurancePlanName,
    this.serviceDate,
    this.serviceProviderId,
    this.diagnosisCodes,
    this.procedureCodes,
    this.totalAmount,
    this.claimedAmount,
    this.submissionDate,
    this.status,
    this.approvedAmount,
    this.paidAmount,
    this.rejectionReason,
    this.paymentDate,
    this.notes,
    this.createdAt,
    this.updatedAt,
  });

  factory InsuranceClaim.fromJson(Map<String, dynamic> json) {
    return InsuranceClaim(
      id: json['id'],
      tenantId: json['tenantId'],
      claimNumber: json['claimNumber'],
      patientId: json['patientId'],
      patientName: json['patientName'],
      insurancePlanId: json['insurancePlanId'],
      insurancePlanName: json['insurancePlanName'],
      serviceDate: json['serviceDate'] != null
          ? DateTime.tryParse(json['serviceDate'] as String)
          : null,
      serviceProviderId: json['serviceProviderId'],
      diagnosisCodes: json['diagnosisCodes'],
      procedureCodes: json['procedureCodes'],
      totalAmount: json['totalAmount'],
      claimedAmount: json['claimedAmount'],
      submissionDate: json['submissionDate'] != null
          ? DateTime.tryParse(json['submissionDate'] as String)
          : null,
      status: json['status'],
      approvedAmount: json['approvedAmount'],
      paidAmount: json['paidAmount'],
      rejectionReason: json['rejectionReason'],
      paymentDate: json['paymentDate'] != null
          ? DateTime.tryParse(json['paymentDate'] as String)
          : null,
      notes: json['notes'],
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
      'claimNumber': claimNumber,
      'patientId': patientId,
      'patientName': patientName,
      'insurancePlanId': insurancePlanId,
      'insurancePlanName': insurancePlanName,
      'serviceDate': serviceDate?.toIso8601String(),
      'serviceProviderId': serviceProviderId,
      'diagnosisCodes': diagnosisCodes,
      'procedureCodes': procedureCodes,
      'totalAmount': totalAmount,
      'claimedAmount': claimedAmount,
      'submissionDate': submissionDate?.toIso8601String(),
      'status': status,
      'approvedAmount': approvedAmount,
      'paidAmount': paidAmount,
      'rejectionReason': rejectionReason,
      'paymentDate': paymentDate?.toIso8601String(),
      'notes': notes,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  InsuranceClaim copyWith({
    String? id,
    String? tenantId,
    String? claimNumber,
    String? patientId,
    String? patientName,
    String? insurancePlanId,
    String? insurancePlanName,
    DateTime? serviceDate,
    String? serviceProviderId,
    String? diagnosisCodes,
    String? procedureCodes,
    double? totalAmount,
    double? claimedAmount,
    DateTime? submissionDate,
    String? status,
    double? approvedAmount,
    double? paidAmount,
    String? rejectionReason,
    DateTime? paymentDate,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return InsuranceClaim(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      claimNumber: claimNumber ?? this.claimNumber,
      patientId: patientId ?? this.patientId,
      patientName: patientName ?? this.patientName,
      insurancePlanId: insurancePlanId ?? this.insurancePlanId,
      insurancePlanName: insurancePlanName ?? this.insurancePlanName,
      serviceDate: serviceDate ?? this.serviceDate,
      serviceProviderId: serviceProviderId ?? this.serviceProviderId,
      diagnosisCodes: diagnosisCodes ?? this.diagnosisCodes,
      procedureCodes: procedureCodes ?? this.procedureCodes,
      totalAmount: totalAmount ?? this.totalAmount,
      claimedAmount: claimedAmount ?? this.claimedAmount,
      submissionDate: submissionDate ?? this.submissionDate,
      status: status ?? this.status,
      approvedAmount: approvedAmount ?? this.approvedAmount,
      paidAmount: paidAmount ?? this.paidAmount,
      rejectionReason: rejectionReason ?? this.rejectionReason,
      paymentDate: paymentDate ?? this.paymentDate,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'InsuranceClaim(id: $id, claimNumber: $claimNumber, status: $status)';
  }
}
