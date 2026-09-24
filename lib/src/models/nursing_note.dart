//TODO model check

class NursingNote {
  final String? admissionId;
  final String? patientId;
  final String? nurseId;
  final DateTime? noteDate;
  final DateTime? noteTime;
  final String? bloodPressure;
  final double? temperature;
  final int? pulseRate;
  final int? respiratoryRate;
  final double? oxygenSaturation;
  final String? intakeOutput;
  final String? observations;
  final String? careProvided;

  NursingNote({
    this.admissionId,
    this.patientId,
    this.nurseId,
    this.noteDate,
    this.noteTime,
    this.bloodPressure,
    this.temperature,
    this.pulseRate,
    this.respiratoryRate,
    this.oxygenSaturation,
    this.intakeOutput,
    this.observations,
    this.careProvided,
  });

  factory NursingNote.fromJson(Map<String, dynamic> json) {
    return NursingNote(
      admissionId: json['admissionId'],
      patientId: json['patientId'],
      nurseId: json['nurseId'],
      noteDate: json['noteDate'] != null
          ? DateTime.tryParse(json['noteDate'] as String)
          : null,
      noteTime: json['noteTime'] != null
          ? DateTime.tryParse(json['noteTime'] as String)
          : null,
      bloodPressure: json['bloodPressure'],
      temperature: json['temperature'],
      pulseRate: json['pulseRate'],
      respiratoryRate: json['respiratoryRate'],
      oxygenSaturation: json['oxygenSaturation'],
      intakeOutput: json['intakeOutput'],
      observations: json['observations'],
      careProvided: json['careProvided'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'admissionId': admissionId,
      'patientId': patientId,
      'nurseId': nurseId,
      'noteDate': noteDate?.toIso8601String(),
      'noteTime': noteTime?.toIso8601String(),
      'bloodPressure': bloodPressure,
      'temperature': temperature,
      'pulseRate': pulseRate,
      'respiratoryRate': respiratoryRate,
      'oxygenSaturation': oxygenSaturation,
      'intakeOutput': intakeOutput,
      'observations': observations,
      'careProvided': careProvided,
    };
  }

  NursingNote copyWith({
    String? admissionId,
    String? patientId,
    String? nurseId,
    DateTime? noteDate,
    DateTime? noteTime,
    String? bloodPressure,
    double? temperature,
    int? pulseRate,
    int? respiratoryRate,
    double? oxygenSaturation,
    String? intakeOutput,
    String? observations,
    String? careProvided,
  }) {
    return NursingNote(
      admissionId: admissionId ?? this.admissionId,
      patientId: patientId ?? this.patientId,
      nurseId: nurseId ?? this.nurseId,
      noteDate: noteDate ?? this.noteDate,
      noteTime: noteTime ?? this.noteTime,
      bloodPressure: bloodPressure ?? this.bloodPressure,
      temperature: temperature ?? this.temperature,
      pulseRate: pulseRate ?? this.pulseRate,
      respiratoryRate: respiratoryRate ?? this.respiratoryRate,
      oxygenSaturation: oxygenSaturation ?? this.oxygenSaturation,
      intakeOutput: intakeOutput ?? this.intakeOutput,
      observations: observations ?? this.observations,
      careProvided: careProvided ?? this.careProvided,
    );
  }

  @override
  String toString() {
    return 'NursingNote(admissionId: $admissionId, patientId: $patientId, noteDate: $noteDate)';
  }
}
