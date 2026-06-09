class SurgeryBooking {
  final String? id;
  final String? bookingNumber;
  final String? patientId;
  final String? patientName;
  final String? primarySurgeonId;
  final String? surgicalProcedureId;
  final String? procedureName;
  final String? operatingRoomId;
  final String? operatingRoomNumber;
  final DateTime? scheduledDate;
  final DateTime? scheduledStartTime;
  final int? estimatedDuration;
  final String? priority;
  final String? status;
  final String? anesthesiaType;
  final String? notes;
  final DateTime? createdAt;

  SurgeryBooking({
    this.id,
    this.bookingNumber,
    this.patientId,
    this.patientName,
    this.primarySurgeonId,
    this.surgicalProcedureId,
    this.procedureName,
    this.operatingRoomId,
    this.operatingRoomNumber,
    this.scheduledDate,
    this.scheduledStartTime,
    this.estimatedDuration,
    this.priority,
    this.status,
    this.anesthesiaType,
    this.notes,
    this.createdAt,
  });

  factory SurgeryBooking.fromJson(Map<String, dynamic> json) {
    return SurgeryBooking(
      id: json['id'],
      bookingNumber: json['bookingNumber'],
      patientId: json['patientId'],
      patientName: json['patientName'],
      primarySurgeonId: json['primarySurgeonId'],
      surgicalProcedureId: json['surgicalProcedureId'],
      procedureName: json['procedureName'],
      operatingRoomId: json['operatingRoomId'],
      operatingRoomNumber: json['operatingRoomNumber'],
      scheduledDate: json['scheduledDate'] != null
          ? DateTime.tryParse(json['scheduledDate'] as String)
          : null,
      scheduledStartTime: json['scheduledStartTime'] != null
          ? DateTime.tryParse(json['scheduledStartTime'] as String)
          : null,
      estimatedDuration: json['estimatedDuration'],
      priority: json['priority'],
      status: json['status'],
      anesthesiaType: json['anesthesiaType'],
      notes: json['notes'],
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bookingNumber': bookingNumber,
      'patientId': patientId,
      'patientName': patientName,
      'primarySurgeonId': primarySurgeonId,
      'surgicalProcedureId': surgicalProcedureId,
      'procedureName': procedureName,
      'operatingRoomId': operatingRoomId,
      'operatingRoomNumber': operatingRoomNumber,
      'scheduledDate': scheduledDate?.toIso8601String(),
      'scheduledStartTime': scheduledStartTime?.toIso8601String(),
      'estimatedDuration': estimatedDuration,
      'priority': priority,
      'status': status,
      'anesthesiaType': anesthesiaType,
      'notes': notes,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  SurgeryBooking copyWith({
    String? id,
    String? bookingNumber,
    String? patientId,
    String? patientName,
    String? primarySurgeonId,
    String? surgicalProcedureId,
    String? procedureName,
    String? operatingRoomId,
    String? operatingRoomNumber,
    DateTime? scheduledDate,
    DateTime? scheduledStartTime,
    int? estimatedDuration,
    String? priority,
    String? status,
    String? anesthesiaType,
    String? notes,
    DateTime? createdAt,
  }) {
    return SurgeryBooking(
      id: id ?? this.id,
      bookingNumber: bookingNumber ?? this.bookingNumber,
      patientId: patientId ?? this.patientId,
      patientName: patientName ?? this.patientName,
      primarySurgeonId: primarySurgeonId ?? this.primarySurgeonId,
      surgicalProcedureId: surgicalProcedureId ?? this.surgicalProcedureId,
      procedureName: procedureName ?? this.procedureName,
      operatingRoomId: operatingRoomId ?? this.operatingRoomId,
      operatingRoomNumber: operatingRoomNumber ?? this.operatingRoomNumber,
      scheduledDate: scheduledDate ?? this.scheduledDate,
      scheduledStartTime: scheduledStartTime ?? this.scheduledStartTime,
      estimatedDuration: estimatedDuration ?? this.estimatedDuration,
      priority: priority ?? this.priority,
      status: status ?? this.status,
      anesthesiaType: anesthesiaType ?? this.anesthesiaType,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() {
    return 'SurgeryBooking{id: $id, bookingNumber: $bookingNumber, patientId: $patientId, patientName: $patientName, primarySurgeonId: $primarySurgeonId, surgicalProcedureId: $surgicalProcedureId, procedureName: $procedureName, operatingRoomId: $operatingRoomId, operatingRoomNumber: $operatingRoomNumber, scheduledDate: $scheduledDate, scheduledStartTime: $scheduledStartTime, estimatedDuration: $estimatedDuration, priority: $priority, status: $status, anesthesiaType: $anesthesiaType, notes: $notes, createdAt: $createdAt}';
  }
}
