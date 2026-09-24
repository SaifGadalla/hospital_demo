class MedicalRecord {
  final String? id;
  final String? tenantId;
  final String? patientId;
  final String? appointmentId;
  final String? doctorId;
  final DateTime? visitDate;
  final double? bloodPressureSystolic;
  final double? bloodPressureDiastolic;
  final double? temperature;
  final int? heartRate;
  final int? respiratoryRate;
  final double? weight;
  final double? height;
  final double? bmi;
  final int? oxygenSaturation;
  final String? subjective;
  final String? objective;
  final String? assessment;
  final String? plan;
  final String? diagnosisCode;
  final String? diagnosisDescription;
  final String? allergies;
  final String? currentMedications;
  final String? clinicalNotes;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  MedicalRecord({
    this.id,
    this.tenantId,
    this.patientId,
    this.appointmentId,
    this.doctorId,
    this.visitDate,
    this.bloodPressureSystolic,
    this.bloodPressureDiastolic,
    this.temperature,
    this.heartRate,
    this.respiratoryRate,
    this.weight,
    this.height,
    this.bmi,
    this.oxygenSaturation,
    this.subjective,
    this.objective,
    this.assessment,
    this.plan,
    this.diagnosisCode,
    this.diagnosisDescription,
    this.allergies,
    this.currentMedications,
    this.clinicalNotes,
    this.createdAt,
    this.updatedAt,
  });

  factory MedicalRecord.fromJson(Map<String, dynamic> json) {
    return MedicalRecord(
      id: json['id'] as String?,
      tenantId: json['tenantId'] as String?,
      patientId: json['patientId'] as String?,
      appointmentId: json['appointmentId'] as String?,
      doctorId: json['doctorId'] as String?,
      visitDate: json['visitDate'] != null
          ? DateTime.parse(json['visitDate'])
          : null,
      bloodPressureSystolic: (json['bloodPressureSystolic'] as num?)
          ?.toDouble(),
      bloodPressureDiastolic: (json['bloodPressureDiastolic'] as num?)
          ?.toDouble(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      heartRate: json['heartRate'] as int?,
      respiratoryRate: json['respiratoryRate'] as int?,
      weight: (json['weight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      bmi: (json['bmi'] as num?)?.toDouble(),
      oxygenSaturation: json['oxygenSaturation'] as int?,
      subjective: json['subjective'] as String?,
      objective: json['objective'] as String?,
      assessment: json['assessment'] as String?,
      plan: json['plan'] as String?,
      diagnosisCode: json['diagnosisCode'] as String?,
      diagnosisDescription: json['diagnosisDescription'] as String?,
      allergies: json['allergies'] as String?,
      currentMedications: json['currentMedications'] as String?,
      clinicalNotes: json['clinicalNotes'] as String?,
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
      'patientId': patientId,
      'appointmentId': appointmentId,
      'doctorId': doctorId,
      'visitDate': visitDate?.toIso8601String(),
      'bloodPressureSystolic': bloodPressureSystolic,
      'bloodPressureDiastolic': bloodPressureDiastolic,
      'temperature': temperature,
      'heartRate': heartRate,
      'respiratoryRate': respiratoryRate,
      'weight': weight,
      'height': height,
      'bmi': bmi,
      'oxygenSaturation': oxygenSaturation,
      'subjective': subjective,
      'objective': objective,
      'assessment': assessment,
      'plan': plan,
      'diagnosisCode': diagnosisCode,
      'diagnosisDescription': diagnosisDescription,
      'allergies': allergies,
      'currentMedications': currentMedications,
      'clinicalNotes': clinicalNotes,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  MedicalRecord copyWith({
    String? id,
    String? tenantId,
    String? patientId,
    String? appointmentId,
    String? doctorId,
    DateTime? visitDate,
    double? bloodPressureSystolic,
    double? bloodPressureDiastolic,
    double? temperature,
    int? heartRate,
    int? respiratoryRate,
    double? weight,
    double? height,
    double? bmi,
    int? oxygenSaturation,
    String? subjective,
    String? objective,
    String? assessment,
    String? plan,
    String? diagnosisCode,
    String? diagnosisDescription,
    String? allergies,
    String? currentMedications,
    String? clinicalNotes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return MedicalRecord(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      patientId: patientId ?? this.patientId,
      appointmentId: appointmentId ?? this.appointmentId,
      doctorId: doctorId ?? this.doctorId,
      visitDate: visitDate ?? this.visitDate,
      bloodPressureSystolic:
          bloodPressureSystolic ?? this.bloodPressureSystolic,
      bloodPressureDiastolic:
          bloodPressureDiastolic ?? this.bloodPressureDiastolic,
      temperature: temperature ?? this.temperature,
      heartRate: heartRate ?? this.heartRate,
      respiratoryRate: respiratoryRate ?? this.respiratoryRate,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      bmi: bmi ?? this.bmi,
      oxygenSaturation: oxygenSaturation ?? this.oxygenSaturation,
      subjective: subjective ?? this.subjective,
      objective: objective ?? this.objective,
      assessment: assessment ?? this.assessment,
      plan: plan ?? this.plan,
      diagnosisCode: diagnosisCode ?? this.diagnosisCode,
      diagnosisDescription: diagnosisDescription ?? this.diagnosisDescription,
      allergies: allergies ?? this.allergies,
      currentMedications: currentMedications ?? this.currentMedications,
      clinicalNotes: clinicalNotes ?? this.clinicalNotes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'MedicalRecord(id: $id, patientId: $patientId, visitDate: $visitDate)';
  }
}
