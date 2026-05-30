class ErRegistration {
  final String? status;
  final String? notes;
  final String? chiefComplaint;
  final String? patientId;
  final String? arrivalTime;
  final String? arrivalMode;

  ErRegistration({
    this.status,
    this.notes,
    this.chiefComplaint,
    this.patientId,
    this.arrivalTime,
    this.arrivalMode,
  });

  factory ErRegistration.fromJson(Map<String, dynamic> json) {
    return ErRegistration(
      status: json['status'],
      notes: json['notes'],
      chiefComplaint: json['chiefComplaint'],
      patientId: json['patientId'],
      arrivalTime: json['arrivalTime'],
      arrivalMode: json['arrivalMode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'notes': notes,
      'chiefComplaint': chiefComplaint,
      'patientId': patientId,
      'arrivalTime': arrivalTime,
      'arrivalMode': arrivalMode,
    };
  }

  ErRegistration copyWith({
    String? status,
    String? notes,
    String? chiefComplaint,
    String? patientId,
    String? arrivalTime,
    String? arrivalMode,
  }) {
    return ErRegistration(
      status: status ?? this.status,
      notes: notes ?? this.notes,
      chiefComplaint: chiefComplaint ?? this.chiefComplaint,
      patientId: patientId ?? this.patientId,
      arrivalTime: arrivalTime ?? this.arrivalTime,
      arrivalMode: arrivalMode ?? this.arrivalMode,
    );
  }

  @override
  String toString() {
    return 'ErRegistration(status: $status, notes: $notes, chiefComplaint: $chiefComplaint, patientId: $patientId, arrivalTime: $arrivalTime, arrivalMode: $arrivalMode)';
  }
}
