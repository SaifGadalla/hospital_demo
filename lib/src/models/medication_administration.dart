class MedicationAdministration {
  final DateTime? actualTime;
  final String? notes;
  final String? reason;
  final String? admissionId;
  final String? patientId;
  final String? prescriptionItemId;
  final String? administeredById;
  final DateTime? scheduledTime;
  final String? dose;
  final String? route;

  MedicationAdministration({
    this.actualTime,
    this.notes,
    this.reason,
    this.admissionId,
    this.patientId,
    this.prescriptionItemId,
    this.administeredById,
    this.scheduledTime,
    this.dose,
    this.route,
  });

  factory MedicationAdministration.fromJson(Map<String, dynamic> json) {
    return MedicationAdministration(
      actualTime: json['actualTime'] != null ? DateTime.tryParse(json['actualTime'] as String) : null,
      notes: json['notes'],
      reason: json['reason'],
      admissionId: json['admissionId'],
      patientId: json['patientId'],
      prescriptionItemId: json['prescriptionItemId'],
      administeredById: json['administeredById'],
      scheduledTime: json['scheduledTime'] != null ? DateTime.tryParse(json['scheduledTime'] as String) : null,
      dose: json['dose'],
      route: json['route'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'actualTime': actualTime?.toIso8601String(),
      'notes': notes,
      'reason': reason,
      'admissionId': admissionId,
      'patientId': patientId,
      'prescriptionItemId': prescriptionItemId,
      'administeredById': administeredById,
      'scheduledTime': scheduledTime?.toIso8601String(),
      'dose': dose,
      'route': route,
    };
  }

  MedicationAdministration copyWith({
    DateTime? actualTime,
    String? notes,
    String? reason,
    String? admissionId,
    String? patientId,
    String? prescriptionItemId,
    String? administeredById,
    DateTime? scheduledTime,
    String? dose,
    String? route,
  }) {
    return MedicationAdministration(
      actualTime: actualTime ?? this.actualTime,
      notes: notes ?? this.notes,
      reason: reason ?? this.reason,
      admissionId: admissionId ?? this.admissionId,
      patientId: patientId ?? this.patientId,
      prescriptionItemId: prescriptionItemId ?? this.prescriptionItemId,
      administeredById: administeredById ?? this.administeredById,
      scheduledTime: scheduledTime ?? this.scheduledTime,
      dose: dose ?? this.dose,
      route: route ?? this.route,
    );
  }

  @override
  String toString() {
    return 'MedicationAdministration(actualTime: $actualTime, notes: $notes, reason: $reason, admissionId: $admissionId, patientId: $patientId, prescriptionItemId: $prescriptionItemId, administeredById: $administeredById, scheduledTime: $scheduledTime, dose: $dose, route: $route)';
  }
}
