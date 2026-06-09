import '../../common.dart';

class Prescription {
  final String? id;
  final String? tenantId;
  final String? prescriptionNumber;
  final String? patientId;
  final String? doctorId;
  final DateTime? prescriptionDate;
  final String? appointmentId;
  final String? medicalRecordId;
  final String? diagnosis;
  final String? status;
  final DateTime? dispensedDate;
  final String? dispensedById;
  final String? notes;
  final List<PrescriptionItem>? items;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Prescription({
    this.id,
    this.tenantId,
    this.prescriptionNumber,
    this.patientId,
    this.doctorId,
    this.prescriptionDate,
    this.appointmentId,
    this.medicalRecordId,
    this.diagnosis,
    this.status,
    this.dispensedDate,
    this.dispensedById,
    this.notes,
    this.items,
    this.createdAt,
    this.updatedAt,
  });

  factory Prescription.fromJson(Map<String, dynamic> json) {
    return Prescription(
      id: json['id'] as String?,
      tenantId: json['tenantId'] as String?,
      prescriptionNumber: json['prescriptionNumber'] as String?,
      patientId: json['patientId'] as String?,
      doctorId: json['doctorId'] as String?,
      prescriptionDate: json['prescriptionDate'] != null
          ? DateTime.parse(json['prescriptionDate'])
          : null,
      appointmentId: json['appointmentId'] as String?,
      medicalRecordId: json['medicalRecordId'] as String?,
      diagnosis: json['diagnosis'] as String?,
      status: json['status'] as String?,
      dispensedDate: json['dispensedDate'] != null
          ? DateTime.parse(json['dispensedDate'])
          : null,
      dispensedById: json['dispensedById'] as String?,
      notes: json['notes'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((item) => PrescriptionItem.fromJson(item))
          .toList(),
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
      'prescriptionNumber': prescriptionNumber,
      'patientId': patientId,
      'doctorId': doctorId,
      'prescriptionDate': prescriptionDate?.toIso8601String(),
      'appointmentId': appointmentId,
      'medicalRecordId': medicalRecordId,
      'diagnosis': diagnosis,
      'status': status,
      'dispensedDate': dispensedDate?.toIso8601String(),
      'dispensedById': dispensedById,
      'notes': notes,
      'items': items?.map((item) => item.toJson()).toList(),
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  Prescription copyWith({
    String? id,
    String? tenantId,
    String? prescriptionNumber,
    String? patientId,
    String? doctorId,
    DateTime? prescriptionDate,
    String? appointmentId,
    String? medicalRecordId,
    String? diagnosis,
    String? status,
    DateTime? dispensedDate,
    String? dispensedById,
    String? notes,
    List<PrescriptionItem>? items,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Prescription(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      prescriptionNumber: prescriptionNumber ?? this.prescriptionNumber,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      prescriptionDate: prescriptionDate ?? this.prescriptionDate,
      appointmentId: appointmentId ?? this.appointmentId,
      medicalRecordId: medicalRecordId ?? this.medicalRecordId,
      diagnosis: diagnosis ?? this.diagnosis,
      status: status ?? this.status,
      dispensedDate: dispensedDate ?? this.dispensedDate,
      dispensedById: dispensedById ?? this.dispensedById,
      notes: notes ?? this.notes,
      items: items ?? this.items,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Prescription(id: $id, tenantId: $tenantId, prescriptionNumber: $prescriptionNumber, patientId: $patientId, doctorId: $doctorId, prescriptionDate: $prescriptionDate, appointmentId: $appointmentId, medicalRecordId: $medicalRecordId, diagnosis: $diagnosis, status: $status, dispensedDate: $dispensedDate, dispensedById: $dispensedById, notes: $notes, items: $items, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
