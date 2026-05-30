class InsurancePlan {
  final String? planName;
  final String? insuranceCompanyId;
  final String? coverageType;
  final double? coveragePercentage;
  final double? coPayAmount;
  final double? deductibleAmount;
  final double? annualLimit;
  final String? exclusions;
  final bool? preAuthRequired;
  final bool? isActive;
  final String? planCode;

  InsurancePlan({
    this.planName,
    this.insuranceCompanyId,
    this.coverageType,
    this.coveragePercentage,
    this.coPayAmount,
    this.deductibleAmount,
    this.annualLimit,
    this.exclusions,
    this.preAuthRequired,
    this.isActive,
    this.planCode,
  });

  factory InsurancePlan.fromJson(Map<String, dynamic> json) {
    return InsurancePlan(
      planName: json['planName'],
      insuranceCompanyId: json['insuranceCompanyId'],
      coverageType: json['coverageType'],
      coveragePercentage: json['coveragePercentage'],
      coPayAmount: json['coPayAmount'],
      deductibleAmount: json['deductibleAmount'],
      annualLimit: json['annualLimit'],
      exclusions: json['exclusions'],
      preAuthRequired: json['preAuthRequired'],
      isActive: json['isActive'],
      planCode: json['planCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'planName': planName,
      'insuranceCompanyId': insuranceCompanyId,
      'coverageType': coverageType,
      'coveragePercentage': coveragePercentage,
      'coPayAmount': coPayAmount,
      'deductibleAmount': deductibleAmount,
      'annualLimit': annualLimit,
      'exclusions': exclusions,
      'preAuthRequired': preAuthRequired,
      'isActive': isActive,
      'planCode': planCode,
    };
  }

  InsurancePlan copyWith({
    String? planName,
    String? insuranceCompanyId,
    String? coverageType,
    double? coveragePercentage,
    double? coPayAmount,
    double? deductibleAmount,
    double? annualLimit,
    String? exclusions,
    bool? preAuthRequired,
    bool? isActive,
    String? planCode,
  }) {
    return InsurancePlan(
      planName: planName ?? this.planName,
      insuranceCompanyId: insuranceCompanyId ?? this.insuranceCompanyId,
      coverageType: coverageType ?? this.coverageType,
      coveragePercentage: coveragePercentage ?? this.coveragePercentage,
      coPayAmount: coPayAmount ?? this.coPayAmount,
      deductibleAmount: deductibleAmount ?? this.deductibleAmount,
      annualLimit: annualLimit ?? this.annualLimit,
      exclusions: exclusions ?? this.exclusions,
      preAuthRequired: preAuthRequired ?? this.preAuthRequired,
      isActive: isActive ?? this.isActive,
      planCode: planCode ?? this.planCode,
    );
  }

  @override
  String toString() {
    return 'InsurancePlan(planName: $planName, insuranceCompanyId: $insuranceCompanyId, coverageType: $coverageType, coveragePercentage: $coveragePercentage, coPayAmount: $coPayAmount, deductibleAmount: $deductibleAmount, annualLimit: $annualLimit, exclusions: $exclusions, preAuthRequired: $preAuthRequired, isActive: $isActive, planCode: $planCode)';
  }
}
