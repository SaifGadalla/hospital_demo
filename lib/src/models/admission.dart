class Admission {
  final String? newBedId;
  final String? newRoomId;
  final String? reason;
  final String? admissionId;
  final String? dischargeDate;
  final String? dischargeDiagnosis;
  final String? proceduresPerformed;
  final String? medicationsOnDischarge;
  final String? followUpInstructions;
  final String? dischargeTo;
  final String? approvedById;
  final String? notes;
  final String? doctorId;
  final String? departmentId;
  final String? admissionType;
  final String? bedId;
  final String? roomId;
  final String? admissionDiagnosis;
  final String? patientId;
  final String? admissionDate;

  Admission({
    this.newBedId,
    this.newRoomId,
    this.reason,
    this.admissionId,
    this.dischargeDate,
    this.dischargeDiagnosis,
    this.proceduresPerformed,
    this.medicationsOnDischarge,
    this.followUpInstructions,
    this.dischargeTo,
    this.approvedById,
    this.notes,
    this.doctorId,
    this.departmentId,
    this.admissionType,
    this.bedId,
    this.roomId,
    this.admissionDiagnosis,
    this.patientId,
    this.admissionDate,
  });

  factory Admission.fromJson(Map<String, dynamic> json) {
    return Admission(
      newBedId: json['newBedId'],
      newRoomId: json['newRoomId'],
      reason: json['reason'],
      admissionId: json['admissionId'],
      dischargeDate: json['dischargeDate'],
      dischargeDiagnosis: json['dischargeDiagnosis'],
      proceduresPerformed: json['proceduresPerformed'],
      medicationsOnDischarge: json['medicationsOnDischarge'],
      followUpInstructions: json['followUpInstructions'],
      dischargeTo: json['dischargeTo'],
      approvedById: json['approvedById'],
      notes: json['notes'],
      doctorId: json['doctorId'],
      departmentId: json['departmentId'],
      admissionType: json['admissionType'],
      bedId: json['bedId'],
      roomId: json['roomId'],
      admissionDiagnosis: json['admissionDiagnosis'],
      patientId: json['patientId'],
      admissionDate: json['admissionDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'newBedId': newBedId,
      'newRoomId': newRoomId,
      'reason': reason,
      'admissionId': admissionId,
      'dischargeDate': dischargeDate,
      'dischargeDiagnosis': dischargeDiagnosis,
      'proceduresPerformed': proceduresPerformed,
      'medicationsOnDischarge': medicationsOnDischarge,
      'followUpInstructions': followUpInstructions,
      'dischargeTo': dischargeTo,
      'approvedById': approvedById,
      'notes': notes,
      'doctorId': doctorId,
      'departmentId': departmentId,
      'admissionType': admissionType,
      'bedId': bedId,
      'roomId': roomId,
      'admissionDiagnosis': admissionDiagnosis,
      'patientId': patientId,
      'admissionDate': admissionDate,
    };
  }

  Admission copyWith({
    String? newBedId,
    String? newRoomId,
    String? reason,
    String? admissionId,
    String? dischargeDate,
    String? dischargeDiagnosis,
    String? proceduresPerformed,
    String? medicationsOnDischarge,
    String? followUpInstructions,
    String? dischargeTo,
    String? approvedById,
    String? notes,
    String? doctorId,
    String? departmentId,
    String? admissionType,
    String? bedId,
    String? roomId,
    String? admissionDiagnosis,
    String? patientId,
    String? admissionDate,
  }) {
    return Admission(
      newBedId: newBedId ?? this.newBedId,
      newRoomId: newRoomId ?? this.newRoomId,
      reason: reason ?? this.reason,
      admissionId: admissionId ?? this.admissionId,
      dischargeDate: dischargeDate ?? this.dischargeDate,
      dischargeDiagnosis: dischargeDiagnosis ?? this.dischargeDiagnosis,
      proceduresPerformed: proceduresPerformed ?? this.proceduresPerformed,
      medicationsOnDischarge: medicationsOnDischarge ?? this.medicationsOnDischarge,
      followUpInstructions: followUpInstructions ?? this.followUpInstructions,
      dischargeTo: dischargeTo ?? this.dischargeTo,
      approvedById: approvedById ?? this.approvedById,
      notes: notes ?? this.notes,
      doctorId: doctorId ?? this.doctorId,
      departmentId: departmentId ?? this.departmentId,
      admissionType: admissionType ?? this.admissionType,
      bedId: bedId ?? this.bedId,
      roomId: roomId ?? this.roomId,
      admissionDiagnosis: admissionDiagnosis ?? this.admissionDiagnosis,
      patientId: patientId ?? this.patientId,
      admissionDate: admissionDate ?? this.admissionDate,
    );
  }

  @override
  String toString() {
    return 'Admission(newBedId: $newBedId, newRoomId: $newRoomId, reason: $reason, admissionId: $admissionId, dischargeDate: $dischargeDate, dischargeDiagnosis: $dischargeDiagnosis, proceduresPerformed: $proceduresPerformed, medicationsOnDischarge: $medicationsOnDischarge, followUpInstructions: $followUpInstructions, dischargeTo: $dischargeTo, approvedById: $approvedById, notes: $notes, doctorId: $doctorId, departmentId: $departmentId, admissionType: $admissionType, bedId: $bedId, roomId: $roomId, admissionDiagnosis: $admissionDiagnosis, patientId: $patientId, admissionDate: $admissionDate)';
  }
}
