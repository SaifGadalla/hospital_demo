class SurgicalProcedure {
  final String? procedureName;
  final String? cptCode;
  final String? specialtyId;
  final int? estimatedDuration;
  final String? requiredEquipment;
  final String? preOpInstructions;
  final String? postOpInstructions;
  final String? description;
  final bool? isActive;
  final String? procedureCode;

  SurgicalProcedure({
    this.procedureName,
    this.cptCode,
    this.specialtyId,
    this.estimatedDuration,
    this.requiredEquipment,
    this.preOpInstructions,
    this.postOpInstructions,
    this.description,
    this.isActive,
    this.procedureCode,
  });

  factory SurgicalProcedure.fromJson(Map<String, dynamic> json) {
    return SurgicalProcedure(
      procedureName: json['procedureName'],
      cptCode: json['cptCode'],
      specialtyId: json['specialtyId'],
      estimatedDuration: json['estimatedDuration'],
      requiredEquipment: json['requiredEquipment'],
      preOpInstructions: json['preOpInstructions'],
      postOpInstructions: json['postOpInstructions'],
      description: json['description'],
      isActive: json['isActive'],
      procedureCode: json['procedureCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'procedureName': procedureName,
      'cptCode': cptCode,
      'specialtyId': specialtyId,
      'estimatedDuration': estimatedDuration,
      'requiredEquipment': requiredEquipment,
      'preOpInstructions': preOpInstructions,
      'postOpInstructions': postOpInstructions,
      'description': description,
      'isActive': isActive,
      'procedureCode': procedureCode,
    };
  }

  SurgicalProcedure copyWith({
    String? procedureName,
    String? cptCode,
    String? specialtyId,
    int? estimatedDuration,
    String? requiredEquipment,
    String? preOpInstructions,
    String? postOpInstructions,
    String? description,
    bool? isActive,
    String? procedureCode,
  }) {
    return SurgicalProcedure(
      procedureName: procedureName ?? this.procedureName,
      cptCode: cptCode ?? this.cptCode,
      specialtyId: specialtyId ?? this.specialtyId,
      estimatedDuration: estimatedDuration ?? this.estimatedDuration,
      requiredEquipment: requiredEquipment ?? this.requiredEquipment,
      preOpInstructions: preOpInstructions ?? this.preOpInstructions,
      postOpInstructions: postOpInstructions ?? this.postOpInstructions,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      procedureCode: procedureCode ?? this.procedureCode,
    );
  }

  @override
  String toString() {
    return 'SurgicalProcedure(procedureName: $procedureName, cptCode: $cptCode, specialtyId: $specialtyId, estimatedDuration: $estimatedDuration, requiredEquipment: $requiredEquipment, preOpInstructions: $preOpInstructions, postOpInstructions: $postOpInstructions, description: $description, isActive: $isActive, procedureCode: $procedureCode)';
  }
}
