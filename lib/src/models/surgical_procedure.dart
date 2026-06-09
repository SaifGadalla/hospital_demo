class SurgicalProcedure {
  final String? id;
  final String? procedureCode;
  final String? procedureName;
  final String? cptCode;
  final String? specialtyId;
  final int? estimatedDuration;
  final String? requiredEquipment;
  final String? preOpInstructions;
  final String? postOpInstructions;
  final String? description;
  final bool? isActive;
  final DateTime? createdAt;

  SurgicalProcedure({
    this.id,
    this.procedureCode,
    this.procedureName,
    this.cptCode,
    this.specialtyId,
    this.estimatedDuration,
    this.requiredEquipment,
    this.preOpInstructions,
    this.postOpInstructions,
    this.description,
    this.isActive,
    this.createdAt,
  });

  factory SurgicalProcedure.fromJson(Map<String, dynamic> json) {
    return SurgicalProcedure(
      id: json['id'],
      procedureCode: json['procedureCode'],
      procedureName: json['procedureName'],
      cptCode: json['cptCode'],
      specialtyId: json['specialtyId'],
      estimatedDuration: json['estimatedDuration'],
      requiredEquipment: json['requiredEquipment'],
      preOpInstructions: json['preOpInstructions'],
      postOpInstructions: json['postOpInstructions'],
      description: json['description'],
      isActive: json['isActive'],
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'procedureCode': procedureCode,
      'procedureName': procedureName,
      'cptCode': cptCode,
      'specialtyId': specialtyId,
      'estimatedDuration': estimatedDuration,
      'requiredEquipment': requiredEquipment,
      'preOpInstructions': preOpInstructions,
      'postOpInstructions': postOpInstructions,
      'description': description,
      'isActive': isActive,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  SurgicalProcedure copyWith({
    String? procedureCode,
    String? procedureName,
    String? cptCode,
    String? specialtyId,
    int? estimatedDuration,
    String? requiredEquipment,
    String? preOpInstructions,
    String? postOpInstructions,
    String? description,
    bool? isActive,
  }) {
    return SurgicalProcedure(
      id: id,
      procedureCode: procedureCode ?? this.procedureCode,
      procedureName: procedureName ?? this.procedureName,
      cptCode: cptCode ?? this.cptCode,
      specialtyId: specialtyId ?? this.specialtyId,
      estimatedDuration: estimatedDuration ?? this.estimatedDuration,
      requiredEquipment: requiredEquipment ?? this.requiredEquipment,
      preOpInstructions: preOpInstructions ?? this.preOpInstructions,
      postOpInstructions: postOpInstructions ?? this.postOpInstructions,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt,
    );
  }

  @override
  String toString() {
    return 'SurgicalProcedure(id: $id, procedureCode: $procedureCode, procedureName: $procedureName, cptCode: $cptCode, specialtyId: $specialtyId, estimatedDuration: $estimatedDuration, requiredEquipment: $requiredEquipment, preOpInstructions: $preOpInstructions, postOpInstructions: $postOpInstructions, description: $description, isActive: $isActive, createdAt: $createdAt)';
  }
}
