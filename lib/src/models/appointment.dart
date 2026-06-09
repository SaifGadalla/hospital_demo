class Appointment {
  final String? id;
  final String? tenantId;
  final String? appointmentNumber;
  final String? patientId;
  final String? patientName;
  final String? patientMRN;
  final String? doctorId;
  final String? departmentId;
  final DateTime? appointmentDate;
  final DateTime? startTime;
  final int? durationMinutes;
  final String? endTime;
  final String? appointmentType;
  final String? status;
  final String? chiefComplaint;
  final String? notes;
  final DateTime? checkInTime;
  final DateTime? checkOutTime;
  final bool? requiresFollowUp;
  final DateTime? followUpDate;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Appointment({
    this.id,
    this.tenantId,
    this.appointmentNumber,
    this.patientId,
    this.patientName,
    this.patientMRN,
    this.doctorId,
    this.departmentId,
    this.appointmentDate,
    this.startTime,
    this.durationMinutes,
    this.endTime,
    this.appointmentType,
    this.status,
    this.chiefComplaint,
    this.notes,
    this.checkInTime,
    this.checkOutTime,
    this.requiresFollowUp,
    this.followUpDate,
    this.createdAt,
    this.updatedAt,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      id: json['id'],
      tenantId: json['tenantId'],
      appointmentNumber: json['appointmentNumber'],
      patientId: json['patientId'],
      patientName: json['patientName'],
      patientMRN: json['patientMRN'],
      doctorId: json['doctorId'],
      departmentId: json['departmentId'],
      appointmentDate: json['appointmentDate'] != null
          ? DateTime.tryParse(json['appointmentDate'] as String)
          : null,
      startTime: json['startTime'] != null
          ? DateTime.tryParse(json['startTime'] as String)
          : null,
      durationMinutes: json['durationMinutes'],
      endTime: json['endTime'],
      appointmentType: json['appointmentType'],
      status: json['status'],
      chiefComplaint: json['chiefComplaint'],
      notes: json['notes'],
      checkInTime: json['checkInTime'] != null
          ? DateTime.tryParse(json['checkInTime'] as String)
          : null,
      checkOutTime: json['checkOutTime'] != null
          ? DateTime.tryParse(json['checkOutTime'] as String)
          : null,
      requiresFollowUp: json['requiresFollowUp'],
      followUpDate: json['followUpDate'] != null
          ? DateTime.tryParse(json['followUpDate'] as String)
          : null,
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
      'appointmentNumber': appointmentNumber,
      'patientId': patientId,
      'patientName': patientName,
      'patientMRN': patientMRN,
      'doctorId': doctorId,
      'departmentId': departmentId,
      'appointmentDate': appointmentDate?.toIso8601String(),
      'startTime': startTime?.toIso8601String(),
      'durationMinutes': durationMinutes,
      'endTime': endTime,
      'appointmentType': appointmentType,
      'status': status,
      'chiefComplaint': chiefComplaint,
      'notes': notes,
      'checkInTime': checkInTime?.toIso8601String(),
      'checkOutTime': checkOutTime?.toIso8601String(),
      'requiresFollowUp': requiresFollowUp,
      'followUpDate': followUpDate?.toIso8601String(),
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  Appointment copyWith({
    String? id,
    String? tenantId,
    String? appointmentNumber,
    String? patientId,
    String? patientName,
    String? patientMRN,
    String? doctorId,
    String? departmentId,
    DateTime? appointmentDate,
    DateTime? startTime,
    int? durationMinutes,
    String? endTime,
    String? appointmentType,
    String? status,
    String? chiefComplaint,
    String? notes,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    bool? requiresFollowUp,
    DateTime? followUpDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Appointment(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      appointmentNumber: appointmentNumber ?? this.appointmentNumber,
      patientId: patientId ?? this.patientId,
      patientName: patientName ?? this.patientName,
      patientMRN: patientMRN ?? this.patientMRN,
      doctorId: doctorId ?? this.doctorId,
      departmentId: departmentId ?? this.departmentId,
      appointmentDate: appointmentDate ?? this.appointmentDate,
      startTime: startTime ?? this.startTime,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      endTime: endTime ?? this.endTime,
      appointmentType: appointmentType ?? this.appointmentType,
      status: status ?? this.status,
      chiefComplaint: chiefComplaint ?? this.chiefComplaint,
      notes: notes ?? this.notes,
      checkInTime: checkInTime ?? this.checkInTime,
      checkOutTime: checkOutTime ?? this.checkOutTime,
      requiresFollowUp: requiresFollowUp ?? this.requiresFollowUp,
      followUpDate: followUpDate ?? this.followUpDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Appointment(id: $id, tenantId: $tenantId, appointmentNumber: $appointmentNumber, patientId: $patientId, patientName: $patientName, patientMRN: $patientMRN, doctorId: $doctorId, departmentId: $departmentId, appointmentDate: $appointmentDate, startTime: $startTime, durationMinutes: $durationMinutes, endTime: $endTime, appointmentType: $appointmentType, status: $status, chiefComplaint: $chiefComplaint, notes: $notes, checkInTime: $checkInTime, checkOutTime: $checkOutTime, requiresFollowUp: $requiresFollowUp, followUpDate: $followUpDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
