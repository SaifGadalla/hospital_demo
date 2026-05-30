class ErTreatment {
  final String? treatmentEndTime;
  final String? disposition;
  final String? erRegistrationId;
  final String? treatingDoctorId;
  final String? treatmentStartTime;
  final String? assessment;
  final String? diagnosis;
  final String? treatmentProvided;
  final String? investigationsOrdered;
  final String? medicationsGiven;
  final String? notes;

  ErTreatment({
    this.treatmentEndTime,
    this.disposition,
    this.erRegistrationId,
    this.treatingDoctorId,
    this.treatmentStartTime,
    this.assessment,
    this.diagnosis,
    this.treatmentProvided,
    this.investigationsOrdered,
    this.medicationsGiven,
    this.notes,
  });

  factory ErTreatment.fromJson(Map<String, dynamic> json) {
    return ErTreatment(
      treatmentEndTime: json['treatmentEndTime'],
      disposition: json['disposition'],
      erRegistrationId: json['erRegistrationId'],
      treatingDoctorId: json['treatingDoctorId'],
      treatmentStartTime: json['treatmentStartTime'],
      assessment: json['assessment'],
      diagnosis: json['diagnosis'],
      treatmentProvided: json['treatmentProvided'],
      investigationsOrdered: json['investigationsOrdered'],
      medicationsGiven: json['medicationsGiven'],
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'treatmentEndTime': treatmentEndTime,
      'disposition': disposition,
      'erRegistrationId': erRegistrationId,
      'treatingDoctorId': treatingDoctorId,
      'treatmentStartTime': treatmentStartTime,
      'assessment': assessment,
      'diagnosis': diagnosis,
      'treatmentProvided': treatmentProvided,
      'investigationsOrdered': investigationsOrdered,
      'medicationsGiven': medicationsGiven,
      'notes': notes,
    };
  }

  ErTreatment copyWith({
    String? treatmentEndTime,
    String? disposition,
    String? erRegistrationId,
    String? treatingDoctorId,
    String? treatmentStartTime,
    String? assessment,
    String? diagnosis,
    String? treatmentProvided,
    String? investigationsOrdered,
    String? medicationsGiven,
    String? notes,
  }) {
    return ErTreatment(
      treatmentEndTime: treatmentEndTime ?? this.treatmentEndTime,
      disposition: disposition ?? this.disposition,
      erRegistrationId: erRegistrationId ?? this.erRegistrationId,
      treatingDoctorId: treatingDoctorId ?? this.treatingDoctorId,
      treatmentStartTime: treatmentStartTime ?? this.treatmentStartTime,
      assessment: assessment ?? this.assessment,
      diagnosis: diagnosis ?? this.diagnosis,
      treatmentProvided: treatmentProvided ?? this.treatmentProvided,
      investigationsOrdered: investigationsOrdered ?? this.investigationsOrdered,
      medicationsGiven: medicationsGiven ?? this.medicationsGiven,
      notes: notes ?? this.notes,
    );
  }

  @override
  String toString() {
    return 'ErTreatment(treatmentEndTime: $treatmentEndTime, disposition: $disposition, erRegistrationId: $erRegistrationId, treatingDoctorId: $treatingDoctorId, treatmentStartTime: $treatmentStartTime, assessment: $assessment, diagnosis: $diagnosis, treatmentProvided: $treatmentProvided, investigationsOrdered: $investigationsOrdered, medicationsGiven: $medicationsGiven, notes: $notes)';
  }
}
