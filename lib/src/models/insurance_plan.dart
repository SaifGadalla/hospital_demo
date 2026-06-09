class InsurancePlan {
  final String? id;
  final String? tenantId;
  final String? planName;
  final String? planCode;
  final String? insuranceCompanyId;
  final String? coverageType;
  final double? coveragePercentage;
  final double? coPayAmount;
  final double? deductibleAmount;
  final double? annualLimit;
  final String? exclusions;
  final bool? preAuthRequired;
  final bool? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  InsurancePlan({
    this.id,
    this.tenantId,
    this.planName,
    this.planCode,
    this.insuranceCompanyId,
    this.coverageType,
    this.coveragePercentage,
    this.coPayAmount,
    this.deductibleAmount,
    this.annualLimit,
    this.exclusions,
    this.preAuthRequired,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  factory InsurancePlan.fromJson(Map<String, dynamic> json) {
    return InsurancePlan(
      id: json['id'],
      tenantId: json['tenantId'],
      planName: json['planName'],
      planCode: json['planCode'],
      insuranceCompanyId: json['insuranceCompanyId'],
      coverageType: json['coverageType'],
      coveragePercentage: json['coveragePercentage'],
      coPayAmount: json['coPayAmount'],
      deductibleAmount: json['deductibleAmount'],
      annualLimit: json['annualLimit'],
      exclusions: json['exclusions'],
      preAuthRequired: json['preAuthRequired'],
      isActive: json['isActive'],
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
      'planName': planName,
      'planCode': planCode,
      'insuranceCompanyId': insuranceCompanyId,
      'coverageType': coverageType,
      'coveragePercentage': coveragePercentage,
      'coPayAmount': coPayAmount,
      'deductibleAmount': deductibleAmount,
      'annualLimit': annualLimit,
      'exclusions': exclusions,
      'preAuthRequired': preAuthRequired,
      'isActive': isActive,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  InsurancePlan copyWith({
    String? id,
    String? tenantId,
    String? planName,
    String? planCode,
    String? insuranceCompanyId,
    String? coverageType,
    double? coveragePercentage,
    double? coPayAmount,
    double? deductibleAmount,
    double? annualLimit,
    String? exclusions,
    bool? preAuthRequired,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return InsurancePlan(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      planName: planName ?? this.planName,
      planCode: planCode ?? this.planCode,
      insuranceCompanyId: insuranceCompanyId ?? this.insuranceCompanyId,
      coverageType: coverageType ?? this.coverageType,
      coveragePercentage: coveragePercentage ?? this.coveragePercentage,
      coPayAmount: coPayAmount ?? this.coPayAmount,
      deductibleAmount: deductibleAmount ?? this.deductibleAmount,
      annualLimit: annualLimit ?? this.annualLimit,
      exclusions: exclusions ?? this.exclusions,
      preAuthRequired: preAuthRequired ?? this.preAuthRequired,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'InsurancePlan(id: $id, tenantId: $tenantId, planName: $planName, planCode: $planCode, insuranceCompanyId: $insuranceCompanyId, coverageType: $coverageType, coveragePercentage: $coveragePercentage, coPayAmount: $coPayAmount, deductibleAmount: $deductibleAmount, annualLimit: $annualLimit, exclusions: $exclusions, preAuthRequired: $preAuthRequired, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
