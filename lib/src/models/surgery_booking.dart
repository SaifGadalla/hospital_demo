class SurgeryBooking {
  final String? surgeryBookingId;
  final String? actualStartTime;
  final String? actualEndTime;
  final String? preOpDiagnosis;
  final String? postOpDiagnosis;
  final String? proceduresPerformed;
  final String? findings;
  final String? complications;
  final double? bloodLoss;
  final String? anesthesiaRecord;
  final String? implantsUsed;
  final String? notes;
  final String? completedBy;
  final String? checklistItems;
  final String? primarySurgeonId;
  final String? operatingRoomId;
  final String? scheduledDate;
  final String? scheduledStartTime;
  final int? estimatedDuration;
  final String? priority;
  final String? anesthesiaType;
  final String? patientId;
  final String? surgicalProcedureId;
  final String? memberId;
  final String? role;

  SurgeryBooking({
    this.surgeryBookingId,
    this.actualStartTime,
    this.actualEndTime,
    this.preOpDiagnosis,
    this.postOpDiagnosis,
    this.proceduresPerformed,
    this.findings,
    this.complications,
    this.bloodLoss,
    this.anesthesiaRecord,
    this.implantsUsed,
    this.notes,
    this.completedBy,
    this.checklistItems,
    this.primarySurgeonId,
    this.operatingRoomId,
    this.scheduledDate,
    this.scheduledStartTime,
    this.estimatedDuration,
    this.priority,
    this.anesthesiaType,
    this.patientId,
    this.surgicalProcedureId,
    this.memberId,
    this.role,
  });

  factory SurgeryBooking.fromJson(Map<String, dynamic> json) {
    return SurgeryBooking(
      surgeryBookingId: json['surgeryBookingId'],
      actualStartTime: json['actualStartTime'],
      actualEndTime: json['actualEndTime'],
      preOpDiagnosis: json['preOpDiagnosis'],
      postOpDiagnosis: json['postOpDiagnosis'],
      proceduresPerformed: json['proceduresPerformed'],
      findings: json['findings'],
      complications: json['complications'],
      bloodLoss: json['bloodLoss'],
      anesthesiaRecord: json['anesthesiaRecord'],
      implantsUsed: json['implantsUsed'],
      notes: json['notes'],
      completedBy: json['completedBy'],
      checklistItems: json['checklistItems'],
      primarySurgeonId: json['primarySurgeonId'],
      operatingRoomId: json['operatingRoomId'],
      scheduledDate: json['scheduledDate'],
      scheduledStartTime: json['scheduledStartTime'],
      estimatedDuration: json['estimatedDuration'],
      priority: json['priority'],
      anesthesiaType: json['anesthesiaType'],
      patientId: json['patientId'],
      surgicalProcedureId: json['surgicalProcedureId'],
      memberId: json['memberId'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'surgeryBookingId': surgeryBookingId,
      'actualStartTime': actualStartTime,
      'actualEndTime': actualEndTime,
      'preOpDiagnosis': preOpDiagnosis,
      'postOpDiagnosis': postOpDiagnosis,
      'proceduresPerformed': proceduresPerformed,
      'findings': findings,
      'complications': complications,
      'bloodLoss': bloodLoss,
      'anesthesiaRecord': anesthesiaRecord,
      'implantsUsed': implantsUsed,
      'notes': notes,
      'completedBy': completedBy,
      'checklistItems': checklistItems,
      'primarySurgeonId': primarySurgeonId,
      'operatingRoomId': operatingRoomId,
      'scheduledDate': scheduledDate,
      'scheduledStartTime': scheduledStartTime,
      'estimatedDuration': estimatedDuration,
      'priority': priority,
      'anesthesiaType': anesthesiaType,
      'patientId': patientId,
      'surgicalProcedureId': surgicalProcedureId,
      'memberId': memberId,
      'role': role,
    };
  }

  SurgeryBooking copyWith({
    String? surgeryBookingId,
    String? actualStartTime,
    String? actualEndTime,
    String? preOpDiagnosis,
    String? postOpDiagnosis,
    String? proceduresPerformed,
    String? findings,
    String? complications,
    double? bloodLoss,
    String? anesthesiaRecord,
    String? implantsUsed,
    String? notes,
    String? completedBy,
    String? checklistItems,
    String? primarySurgeonId,
    String? operatingRoomId,
    String? scheduledDate,
    String? scheduledStartTime,
    int? estimatedDuration,
    String? priority,
    String? anesthesiaType,
    String? patientId,
    String? surgicalProcedureId,
    String? memberId,
    String? role,
  }) {
    return SurgeryBooking(
      surgeryBookingId: surgeryBookingId ?? this.surgeryBookingId,
      actualStartTime: actualStartTime ?? this.actualStartTime,
      actualEndTime: actualEndTime ?? this.actualEndTime,
      preOpDiagnosis: preOpDiagnosis ?? this.preOpDiagnosis,
      postOpDiagnosis: postOpDiagnosis ?? this.postOpDiagnosis,
      proceduresPerformed: proceduresPerformed ?? this.proceduresPerformed,
      findings: findings ?? this.findings,
      complications: complications ?? this.complications,
      bloodLoss: bloodLoss ?? this.bloodLoss,
      anesthesiaRecord: anesthesiaRecord ?? this.anesthesiaRecord,
      implantsUsed: implantsUsed ?? this.implantsUsed,
      notes: notes ?? this.notes,
      completedBy: completedBy ?? this.completedBy,
      checklistItems: checklistItems ?? this.checklistItems,
      primarySurgeonId: primarySurgeonId ?? this.primarySurgeonId,
      operatingRoomId: operatingRoomId ?? this.operatingRoomId,
      scheduledDate: scheduledDate ?? this.scheduledDate,
      scheduledStartTime: scheduledStartTime ?? this.scheduledStartTime,
      estimatedDuration: estimatedDuration ?? this.estimatedDuration,
      priority: priority ?? this.priority,
      anesthesiaType: anesthesiaType ?? this.anesthesiaType,
      patientId: patientId ?? this.patientId,
      surgicalProcedureId: surgicalProcedureId ?? this.surgicalProcedureId,
      memberId: memberId ?? this.memberId,
      role: role ?? this.role,
    );
  }

  @override
  String toString() {
    return 'SurgeryBooking(surgeryBookingId: $surgeryBookingId, actualStartTime: $actualStartTime, actualEndTime: $actualEndTime, preOpDiagnosis: $preOpDiagnosis, postOpDiagnosis: $postOpDiagnosis, proceduresPerformed: $proceduresPerformed, findings: $findings, complications: $complications, bloodLoss: $bloodLoss, anesthesiaRecord: $anesthesiaRecord, implantsUsed: $implantsUsed, notes: $notes, completedBy: $completedBy, checklistItems: $checklistItems, primarySurgeonId: $primarySurgeonId, operatingRoomId: $operatingRoomId, scheduledDate: $scheduledDate, scheduledStartTime: $scheduledStartTime, estimatedDuration: $estimatedDuration, priority: $priority, anesthesiaType: $anesthesiaType, patientId: $patientId, surgicalProcedureId: $surgicalProcedureId, memberId: $memberId, role: $role)';
  }
}
