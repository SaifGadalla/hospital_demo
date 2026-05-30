class Prescription {
  final String? dispensedById;
  final String? patientId;
  final String? doctorId;
  final String? prescriptionDate;
  final String? appointmentId;
  final String? medicalRecordId;
  final String? diagnosis;
  final String? status;
  final String? dispensedDate;
  final String? notes;
  final List<Map<String, dynamic>>? items;

  Prescription({
    this.dispensedById,
    this.patientId,
    this.doctorId,
    this.prescriptionDate,
    this.appointmentId,
    this.medicalRecordId,
    this.diagnosis,
    this.status,
    this.dispensedDate,
    this.notes,
    this.items,
  });

  factory Prescription.fromJson(Map<String, dynamic> json) {
    return Prescription(
      dispensedById: json['dispensedById'],
      patientId: json['patientId'],
      doctorId: json['doctorId'],
      prescriptionDate: json['prescriptionDate'],
      appointmentId: json['appointmentId'],
      medicalRecordId: json['medicalRecordId'],
      diagnosis: json['diagnosis'],
      status: json['status'],
      dispensedDate: json['dispensedDate'],
      notes: json['notes'],
      items: json['items'] != null ? List<Map<String, dynamic>>.from(json['items']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dispensedById': dispensedById,
      'patientId': patientId,
      'doctorId': doctorId,
      'prescriptionDate': prescriptionDate,
      'appointmentId': appointmentId,
      'medicalRecordId': medicalRecordId,
      'diagnosis': diagnosis,
      'status': status,
      'dispensedDate': dispensedDate,
      'notes': notes,
      'items': items,
    };
  }

  Prescription copyWith({
    String? dispensedById,
    String? patientId,
    String? doctorId,
    String? prescriptionDate,
    String? appointmentId,
    String? medicalRecordId,
    String? diagnosis,
    String? status,
    String? dispensedDate,
    String? notes,
    List<Map<String, dynamic>>? items,
  }) {
    return Prescription(
      dispensedById: dispensedById ?? this.dispensedById,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      prescriptionDate: prescriptionDate ?? this.prescriptionDate,
      appointmentId: appointmentId ?? this.appointmentId,
      medicalRecordId: medicalRecordId ?? this.medicalRecordId,
      diagnosis: diagnosis ?? this.diagnosis,
      status: status ?? this.status,
      dispensedDate: dispensedDate ?? this.dispensedDate,
      notes: notes ?? this.notes,
      items: items ?? this.items,
    );
  }

  @override
  String toString() {
    return 'Prescription(dispensedById: $dispensedById, patientId: $patientId, doctorId: $doctorId, prescriptionDate: $prescriptionDate, appointmentId: $appointmentId, medicalRecordId: $medicalRecordId, diagnosis: $diagnosis, status: $status, dispensedDate: $dispensedDate, notes: $notes, items: $items)';
  }
}
