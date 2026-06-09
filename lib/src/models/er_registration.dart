class ErRegistration {
  final String? id;
  final String? tenantId;
  final String? erNumber;
  final String? patientId;
  final String? patientName;
  final String? patientMRN;
  final DateTime? arrivalTime;
  final String? arrivalMode;
  final String? chiefComplaint;
  final int? triageLevel;
  final String? triageColor;
  final String? status;
  final DateTime? dispositionTime;
  final String? notes;
  final DateTime? createdAt;

  ErRegistration({
    this.id,
    this.tenantId,
    this.erNumber,
    this.patientId,
    this.patientName,
    this.patientMRN,
    this.arrivalTime,
    this.arrivalMode,
    this.chiefComplaint,
    this.triageLevel,
    this.triageColor,
    this.status,
    this.dispositionTime,
    this.notes,
    this.createdAt,
  });

  factory ErRegistration.fromJson(Map<String, dynamic> json) {
    return ErRegistration(
      id: json['id'],
      tenantId: json['tenantId'],
      erNumber: json['erNumber'],
      patientId: json['patientId'],
      patientName: json['patientName'],
      patientMRN: json['patientMRN'],
      arrivalTime: json['arrivalTime'] != null
          ? DateTime.tryParse(json['arrivalTime'] as String)
          : null,
      arrivalMode: json['arrivalMode'],
      chiefComplaint: json['chiefComplaint'],
      triageLevel: json['triageLevel'],
      triageColor: json['triageColor'],
      status: json['status'],
      dispositionTime: json['dispositionTime'] != null
          ? DateTime.tryParse(json['dispositionTime'] as String)
          : null,
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
      'erNumber': erNumber,
      'patientId': patientId,
      'patientName': patientName,
      'patientMRN': patientMRN,
      'arrivalTime': arrivalTime?.toIso8601String(),
      'arrivalMode': arrivalMode,
      'chiefComplaint': chiefComplaint,
      'triageLevel': triageLevel,
      'triageColor': triageColor,
      'status': status,
      'dispositionTime': dispositionTime?.toIso8601String(),
      'notes': notes,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  ErRegistration copyWith({
    String? id,
    String? tenantId,
    String? erNumber,
    String? patientId,
    String? patientName,
    String? patientMRN,
    DateTime? arrivalTime,
    String? arrivalMode,
    String? chiefComplaint,
    int? triageLevel,
    String? triageColor,
    String? status,
    DateTime? dispositionTime,
    String? notes,
    DateTime? createdAt,
  }) {
    return ErRegistration(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      erNumber: erNumber ?? this.erNumber,
      patientId: patientId ?? this.patientId,
      patientName: patientName ?? this.patientName,
      patientMRN: patientMRN ?? this.patientMRN,
      arrivalTime: arrivalTime ?? this.arrivalTime,
      arrivalMode: arrivalMode ?? this.arrivalMode,
      chiefComplaint: chiefComplaint ?? this.chiefComplaint,
      triageLevel: triageLevel ?? this.triageLevel,
      triageColor: triageColor ?? this.triageColor,
      status: status ?? this.status,
      dispositionTime: dispositionTime ?? this.dispositionTime,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() {
    return 'ErRegistration(id: $id, tenantId: $tenantId, erNumber: $erNumber, patientId: $patientId, patientName: $patientName, patientMRN: $patientMRN, arrivalTime: $arrivalTime, arrivalMode: $arrivalMode, chiefComplaint: $chiefComplaint, triageLevel: $triageLevel, triageColor: $triageColor, status: $status, dispositionTime: $dispositionTime, notes: $notes, createdAt: $createdAt)';
  }
}
