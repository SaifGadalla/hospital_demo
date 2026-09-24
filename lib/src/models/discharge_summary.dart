//TODO model check

class DischargeSummary {
  final String? id;
  final String? admissionId;
  final DateTime? dischargeDate;
  final String? dischargeDiagnosis;
  final String? proceduresPerformed;
  final String? medicationsOnDischarge;
  final String? followUpInstructions;
  final String? dischargeTo;
  final String? approvedById;
  final String? notes;
  final String? doctorId;
  final String? patientId;

  DischargeSummary({
    this.id,
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
    this.patientId,
  });

  factory DischargeSummary.fromJson(Map<String, dynamic> json) {
    return DischargeSummary(
      id: json['id'],
      admissionId: json['admissionId'],
      dischargeDate: json['dischargeDate'] != null
          ? DateTime.tryParse(json['dischargeDate'] as String)
          : null,
      dischargeDiagnosis: json['dischargeDiagnosis'],
      proceduresPerformed: json['proceduresPerformed'],
      medicationsOnDischarge: json['medicationsOnDischarge'],
      followUpInstructions: json['followUpInstructions'],
      dischargeTo: json['dischargeTo'],
      approvedById: json['approvedById'],
      notes: json['notes'],
      doctorId: json['doctorId'],
      patientId: json['patientId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'admissionId': admissionId,
      'dischargeDate': dischargeDate?.toIso8601String(),
      'dischargeDiagnosis': dischargeDiagnosis,
      'proceduresPerformed': proceduresPerformed,
      'medicationsOnDischarge': medicationsOnDischarge,
      'followUpInstructions': followUpInstructions,
      'dischargeTo': dischargeTo,
      'approvedById': approvedById,
      'notes': notes,
      'doctorId': doctorId,
      'patientId': patientId,
    };
  }

  DischargeSummary copyWith({
    String? id,
    String? admissionId,
    DateTime? dischargeDate,
    String? dischargeDiagnosis,
    String? proceduresPerformed,
    String? medicationsOnDischarge,
    String? followUpInstructions,
    String? dischargeTo,
    String? approvedById,
    String? notes,
    String? doctorId,
    String? patientId,
  }) {
    return DischargeSummary(
      id: id ?? this.id,
      admissionId: admissionId ?? this.admissionId,
      dischargeDate: dischargeDate ?? this.dischargeDate,
      dischargeDiagnosis: dischargeDiagnosis ?? this.dischargeDiagnosis,
      proceduresPerformed: proceduresPerformed ?? this.proceduresPerformed,
      medicationsOnDischarge:
          medicationsOnDischarge ?? this.medicationsOnDischarge,
      followUpInstructions: followUpInstructions ?? this.followUpInstructions,
      dischargeTo: dischargeTo ?? this.dischargeTo,
      approvedById: approvedById ?? this.approvedById,
      notes: notes ?? this.notes,
      doctorId: doctorId ?? this.doctorId,
      patientId: patientId ?? this.patientId,
    );
  }

  @override
  String toString() {
    return 'DischargeSummary(id: $id, admissionId: $admissionId, dischargeDate: $dischargeDate, patientId: $patientId)';
  }
}
