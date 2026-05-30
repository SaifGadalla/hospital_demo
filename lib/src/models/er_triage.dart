class ErTriage {
  final String? erRegistrationId;
  final String? triagedById;
  final int? triageLevel;
  final String? triageColor;
  final String? bloodPressure;
  final double? temperature;
  final int? pulseRate;
  final int? respiratoryRate;
  final double? oxygenSaturation;
  final int? painScale;
  final String? chiefComplaint;
  final String? briefHistory;
  final String? allergies;
  final String? currentMedications;
  final String? notes;

  ErTriage({
    this.erRegistrationId,
    this.triagedById,
    this.triageLevel,
    this.triageColor,
    this.bloodPressure,
    this.temperature,
    this.pulseRate,
    this.respiratoryRate,
    this.oxygenSaturation,
    this.painScale,
    this.chiefComplaint,
    this.briefHistory,
    this.allergies,
    this.currentMedications,
    this.notes,
  });

  factory ErTriage.fromJson(Map<String, dynamic> json) {
    return ErTriage(
      erRegistrationId: json['erRegistrationId'],
      triagedById: json['triagedById'],
      triageLevel: json['triageLevel'],
      triageColor: json['triageColor'],
      bloodPressure: json['bloodPressure'],
      temperature: json['temperature'],
      pulseRate: json['pulseRate'],
      respiratoryRate: json['respiratoryRate'],
      oxygenSaturation: json['oxygenSaturation'],
      painScale: json['painScale'],
      chiefComplaint: json['chiefComplaint'],
      briefHistory: json['briefHistory'],
      allergies: json['allergies'],
      currentMedications: json['currentMedications'],
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'erRegistrationId': erRegistrationId,
      'triagedById': triagedById,
      'triageLevel': triageLevel,
      'triageColor': triageColor,
      'bloodPressure': bloodPressure,
      'temperature': temperature,
      'pulseRate': pulseRate,
      'respiratoryRate': respiratoryRate,
      'oxygenSaturation': oxygenSaturation,
      'painScale': painScale,
      'chiefComplaint': chiefComplaint,
      'briefHistory': briefHistory,
      'allergies': allergies,
      'currentMedications': currentMedications,
      'notes': notes,
    };
  }

  ErTriage copyWith({
    String? erRegistrationId,
    String? triagedById,
    int? triageLevel,
    String? triageColor,
    String? bloodPressure,
    double? temperature,
    int? pulseRate,
    int? respiratoryRate,
    double? oxygenSaturation,
    int? painScale,
    String? chiefComplaint,
    String? briefHistory,
    String? allergies,
    String? currentMedications,
    String? notes,
  }) {
    return ErTriage(
      erRegistrationId: erRegistrationId ?? this.erRegistrationId,
      triagedById: triagedById ?? this.triagedById,
      triageLevel: triageLevel ?? this.triageLevel,
      triageColor: triageColor ?? this.triageColor,
      bloodPressure: bloodPressure ?? this.bloodPressure,
      temperature: temperature ?? this.temperature,
      pulseRate: pulseRate ?? this.pulseRate,
      respiratoryRate: respiratoryRate ?? this.respiratoryRate,
      oxygenSaturation: oxygenSaturation ?? this.oxygenSaturation,
      painScale: painScale ?? this.painScale,
      chiefComplaint: chiefComplaint ?? this.chiefComplaint,
      briefHistory: briefHistory ?? this.briefHistory,
      allergies: allergies ?? this.allergies,
      currentMedications: currentMedications ?? this.currentMedications,
      notes: notes ?? this.notes,
    );
  }

  @override
  String toString() {
    return 'ErTriage(erRegistrationId: $erRegistrationId, triagedById: $triagedById, triageLevel: $triageLevel, triageColor: $triageColor, bloodPressure: $bloodPressure, temperature: $temperature, pulseRate: $pulseRate, respiratoryRate: $respiratoryRate, oxygenSaturation: $oxygenSaturation, painScale: $painScale, chiefComplaint: $chiefComplaint, briefHistory: $briefHistory, allergies: $allergies, currentMedications: $currentMedications, notes: $notes)';
  }
}
