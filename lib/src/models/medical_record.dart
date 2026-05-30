class MedicalRecord {
  final String? patientId;
  final String? appointmentId;
  final String? doctorId;
  final String? visitDate;
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

  MedicalRecord({
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
  });

  factory MedicalRecord.fromJson(Map<String, dynamic> json) {
    return MedicalRecord(
      patientId: json['patientId'],
      appointmentId: json['appointmentId'],
      doctorId: json['doctorId'],
      visitDate: json['visitDate'],
      bloodPressureSystolic: json['bloodPressureSystolic'],
      bloodPressureDiastolic: json['bloodPressureDiastolic'],
      temperature: json['temperature'],
      heartRate: json['heartRate'],
      respiratoryRate: json['respiratoryRate'],
      weight: json['weight'],
      height: json['height'],
      bmi: json['bmi'],
      oxygenSaturation: json['oxygenSaturation'],
      subjective: json['subjective'],
      objective: json['objective'],
      assessment: json['assessment'],
      plan: json['plan'],
      diagnosisCode: json['diagnosisCode'],
      diagnosisDescription: json['diagnosisDescription'],
      allergies: json['allergies'],
      currentMedications: json['currentMedications'],
      clinicalNotes: json['clinicalNotes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'patientId': patientId,
      'appointmentId': appointmentId,
      'doctorId': doctorId,
      'visitDate': visitDate,
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
    };
  }

  MedicalRecord copyWith({
    String? patientId,
    String? appointmentId,
    String? doctorId,
    String? visitDate,
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
  }) {
    return MedicalRecord(
      patientId: patientId ?? this.patientId,
      appointmentId: appointmentId ?? this.appointmentId,
      doctorId: doctorId ?? this.doctorId,
      visitDate: visitDate ?? this.visitDate,
      bloodPressureSystolic: bloodPressureSystolic ?? this.bloodPressureSystolic,
      bloodPressureDiastolic: bloodPressureDiastolic ?? this.bloodPressureDiastolic,
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
    );
  }

  @override
  String toString() {
    return 'MedicalRecord(patientId: $patientId, appointmentId: $appointmentId, doctorId: $doctorId, visitDate: $visitDate, bloodPressureSystolic: $bloodPressureSystolic, bloodPressureDiastolic: $bloodPressureDiastolic, temperature: $temperature, heartRate: $heartRate, respiratoryRate: $respiratoryRate, weight: $weight, height: $height, bmi: $bmi, oxygenSaturation: $oxygenSaturation, subjective: $subjective, objective: $objective, assessment: $assessment, plan: $plan, diagnosisCode: $diagnosisCode, diagnosisDescription: $diagnosisDescription, allergies: $allergies, currentMedications: $currentMedications, clinicalNotes: $clinicalNotes)';
  }
}
