class Appointment {
  final String? checkInTime;
  final String? chiefComplaint;
  final String? patientId;
  final String? doctorId;
  final String? departmentId;
  final String? appointmentDate;
  final String? startTime;
  final int? durationMinutes;
  final String? appointmentType;
  final String? status;
  final String? notes;
  final bool? requiresFollowUp;
  final String? followUpDate;

  Appointment({
    this.checkInTime,
    this.chiefComplaint,
    this.patientId,
    this.doctorId,
    this.departmentId,
    this.appointmentDate,
    this.startTime,
    this.durationMinutes,
    this.appointmentType,
    this.status,
    this.notes,
    this.requiresFollowUp,
    this.followUpDate,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      checkInTime: json['checkInTime'],
      chiefComplaint: json['chiefComplaint'],
      patientId: json['patientId'],
      doctorId: json['doctorId'],
      departmentId: json['departmentId'],
      appointmentDate: json['appointmentDate'],
      startTime: json['startTime'],
      durationMinutes: json['durationMinutes'],
      appointmentType: json['appointmentType'],
      status: json['status'],
      notes: json['notes'],
      requiresFollowUp: json['requiresFollowUp'],
      followUpDate: json['followUpDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'checkInTime': checkInTime,
      'chiefComplaint': chiefComplaint,
      'patientId': patientId,
      'doctorId': doctorId,
      'departmentId': departmentId,
      'appointmentDate': appointmentDate,
      'startTime': startTime,
      'durationMinutes': durationMinutes,
      'appointmentType': appointmentType,
      'status': status,
      'notes': notes,
      'requiresFollowUp': requiresFollowUp,
      'followUpDate': followUpDate,
    };
  }

  Appointment copyWith({
    String? checkInTime,
    String? chiefComplaint,
    String? patientId,
    String? doctorId,
    String? departmentId,
    String? appointmentDate,
    String? startTime,
    int? durationMinutes,
    String? appointmentType,
    String? status,
    String? notes,
    bool? requiresFollowUp,
    String? followUpDate,
  }) {
    return Appointment(
      checkInTime: checkInTime ?? this.checkInTime,
      chiefComplaint: chiefComplaint ?? this.chiefComplaint,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      departmentId: departmentId ?? this.departmentId,
      appointmentDate: appointmentDate ?? this.appointmentDate,
      startTime: startTime ?? this.startTime,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      appointmentType: appointmentType ?? this.appointmentType,
      status: status ?? this.status,
      notes: notes ?? this.notes,
      requiresFollowUp: requiresFollowUp ?? this.requiresFollowUp,
      followUpDate: followUpDate ?? this.followUpDate,
    );
  }

  @override
  String toString() {
    return 'Appointment(checkInTime: $checkInTime, chiefComplaint: $chiefComplaint, patientId: $patientId, doctorId: $doctorId, departmentId: $departmentId, appointmentDate: $appointmentDate, startTime: $startTime, durationMinutes: $durationMinutes, appointmentType: $appointmentType, status: $status, notes: $notes, requiresFollowUp: $requiresFollowUp, followUpDate: $followUpDate)';
  }
}
