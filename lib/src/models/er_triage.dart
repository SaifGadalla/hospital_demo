class ErTriage {
  final String? id;
  final String? tenantId;
  final String? erRegistrationId;
  final String? patientId;
  final String? triagedById;
  final DateTime? triageTime;
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
  final DateTime? createdAt;

  ErTriage({
    this.id,
    this.tenantId,
    this.erRegistrationId,
    this.patientId,
    this.triagedById,
    this.triageTime,
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
    this.createdAt,
  });

  factory ErTriage.fromJson(Map<String, dynamic> json) {
    return ErTriage(
      id: json['id'],
      tenantId: json['tenantId'],
      erRegistrationId: json['erRegistrationId'],
      patientId: json['patientId'],
      triagedById: json['triagedById'],
      triageTime: json['triageTime'] != null
          ? DateTime.tryParse(json['triageTime'] as String)
          : null,
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
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tenantId': tenantId,
      'erRegistrationId': erRegistrationId,
      'patientId': patientId,
      'triagedById': triagedById,
      'triageTime': triageTime?.toIso8601String(),
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
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  ErTriage copyWith({
    String? id,
    String? tenantId,
    String? erRegistrationId,
    String? patientId,
    String? triagedById,
    DateTime? triageTime,
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
    DateTime? createdAt,
  }) {
    return ErTriage(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      erRegistrationId: erRegistrationId ?? this.erRegistrationId,
      patientId: patientId ?? this.patientId,
      triagedById: triagedById ?? this.triagedById,
      triageTime: triageTime ?? this.triageTime,
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
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() {
    return 'ErTriage(id: $id, tenantId: $tenantId, erRegistrationId: $erRegistrationId, patientId: $patientId, triagedById: $triagedById, triageTime: $triageTime, triageLevel: $triageLevel, triageColor: $triageColor, bloodPressure: $bloodPressure, temperature: $temperature, pulseRate: $pulseRate, respiratoryRate: $respiratoryRate, oxygenSaturation: $oxygenSaturation, painScale: $painScale, chiefComplaint: $chiefComplaint, briefHistory: $briefHistory, allergies: $allergies, currentMedications: $currentMedications, notes: $notes, createdAt: $createdAt)';
  }
}
