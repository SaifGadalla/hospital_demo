class Admission {
  final String? id;
  final String? tenantId;
  final String? admissionNumber;
  final String? patientId;
  final String? patientName;
  final String? patientMRN;
  final String? doctorId;
  final String? departmentId;
  final DateTime? admissionDate;
  final DateTime? dischargeDate;
  final String? admissionType;
  final String? bedId;
  final String? bedNumber;
  final String? roomId;
  final String? roomNumber;
  final String? admissionDiagnosis;
  final String? dischargeDiagnosis;
  final String? status;
  final String? notes;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Admission({
    this.id,
    this.tenantId,
    this.admissionNumber,
    this.patientId,
    this.patientName,
    this.patientMRN,
    this.doctorId,
    this.departmentId,
    this.admissionDate,
    this.dischargeDate,
    this.admissionType,
    this.bedId,
    this.bedNumber,
    this.roomId,
    this.roomNumber,
    this.admissionDiagnosis,
    this.dischargeDiagnosis,
    this.status,
    this.notes,
    this.createdAt,
    this.updatedAt,
  });

  factory Admission.fromJson(Map<String, dynamic> json) {
    return Admission(
      id: json['id'],
      tenantId: json['tenantId'],
      admissionNumber: json['admissionNumber'],
      patientId: json['patientId'],
      patientName: json['patientName'],
      patientMRN: json['patientMRN'],
      doctorId: json['doctorId'],
      departmentId: json['departmentId'],
      admissionDate: json['admissionDate'] != null
          ? DateTime.tryParse(json['admissionDate'] as String)
          : null,
      dischargeDate: json['dischargeDate'] != null
          ? DateTime.tryParse(json['dischargeDate'] as String)
          : null,
      admissionType: json['admissionType'],
      bedId: json['bedId'],
      bedNumber: json['bedNumber'],
      roomId: json['roomId'],
      roomNumber: json['roomNumber'],
      admissionDiagnosis: json['admissionDiagnosis'],
      dischargeDiagnosis: json['dischargeDiagnosis'],
      status: json['status'],
      notes: json['notes'],
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.tryParse(json['updatedAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tenantId': tenantId,
      'admissionNumber': admissionNumber,
      'patientId': patientId,
      'patientName': patientName,
      'patientMRN': patientMRN,
      'doctorId': doctorId,
      'departmentId': departmentId,
      'admissionDate': admissionDate?.toIso8601String(),
      'dischargeDate': dischargeDate?.toIso8601String(),
      'admissionType': admissionType,
      'bedId': bedId,
      'bedNumber': bedNumber,
      'roomId': roomId,
      'roomNumber': roomNumber,
      'admissionDiagnosis': admissionDiagnosis,
      'dischargeDiagnosis': dischargeDiagnosis,
      'status': status,
      'notes': notes,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  Admission copyWith({
    String? id,
    String? tenantId,
    String? admissionNumber,
    String? patientId,
    String? patientName,
    String? patientMRN,
    String? doctorId,
    String? departmentId,
    DateTime? admissionDate,
    DateTime? dischargeDate,
    String? admissionType,
    String? bedId,
    String? bedNumber,
    String? roomId,
    String? roomNumber,
    String? admissionDiagnosis,
    String? dischargeDiagnosis,
    String? status,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Admission(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      admissionNumber: admissionNumber ?? this.admissionNumber,
      patientId: patientId ?? this.patientId,
      patientName: patientName ?? this.patientName,
      patientMRN: patientMRN ?? this.patientMRN,
      doctorId: doctorId ?? this.doctorId,
      departmentId: departmentId ?? this.departmentId,
      admissionDate: admissionDate ?? this.admissionDate,
      dischargeDate: dischargeDate ?? this.dischargeDate,
      admissionType: admissionType ?? this.admissionType,
      bedId: bedId ?? this.bedId,
      bedNumber: bedNumber ?? this.bedNumber,
      roomId: roomId ?? this.roomId,
      roomNumber: roomNumber ?? this.roomNumber,
      admissionDiagnosis: admissionDiagnosis ?? this.admissionDiagnosis,
      dischargeDiagnosis: dischargeDiagnosis ?? this.dischargeDiagnosis,
      status: status ?? this.status,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Admission(id: $id, tenantId: $tenantId, admissionNumber: $admissionNumber, patientId: $patientId, patientName: $patientName, patientMRN: $patientMRN, doctorId: $doctorId, departmentId: $departmentId, admissionDate: $admissionDate, dischargeDate: $dischargeDate, admissionType: $admissionType, bedId: $bedId, bedNumber: $bedNumber, roomId: $roomId, roomNumber: $roomNumber, admissionDiagnosis: $admissionDiagnosis, dischargeDiagnosis: $dischargeDiagnosis, status: $status, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
