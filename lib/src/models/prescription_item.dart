class PrescriptionItem {
  final String? id;
  final String? tenantId;
  final String? prescriptionId;
  final String? medicationId;
  final String? medicationName;
  final String? dosage;
  final String? frequency;
  final String? route;
  final int? durationDays;
  final double? quantity;
  final String? instructions;
  final bool? isDispensed;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  PrescriptionItem({
    this.id,
    this.tenantId,
    this.prescriptionId,
    this.medicationId,
    this.medicationName,
    this.dosage,
    this.frequency,
    this.route,
    this.durationDays,
    this.quantity,
    this.instructions,
    this.isDispensed,
    this.createdAt,
    this.updatedAt,
  });

  factory PrescriptionItem.fromJson(Map<String, dynamic> json) {
    return PrescriptionItem(
      id: json['id'] as String?,
      tenantId: json['tenantId'] as String?,
      prescriptionId: json['prescriptionId'] as String?,
      medicationId: json['medicationId'] as String?,
      medicationName: json['medicationName'] as String?,
      dosage: json['dosage'] as String?,
      frequency: json['frequency'] as String?,
      route: json['route'] as String?,
      durationDays: json['durationDays'] as int?,
      quantity: json['quantity'] as double?,
      instructions: json['instructions'] as String?,
      isDispensed: json['isDispensed'] as bool?,
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
      'prescriptionId': prescriptionId,
      'medicationId': medicationId,
      'medicationName': medicationName,
      'dosage': dosage,
      'frequency': frequency,
      'route': route,
      'durationDays': durationDays,
      'quantity': quantity,
      'instructions': instructions,
      'isDispensed': isDispensed,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  PrescriptionItem copyWith({
    String? id,
    String? tenantId,
    String? prescriptionId,
    String? medicationId,
    String? medicationName,
    String? dosage,
    String? frequency,
    String? route,
    int? durationDays,
    double? quantity,
    String? instructions,
    bool? isDispensed,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PrescriptionItem(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      prescriptionId: prescriptionId ?? this.prescriptionId,
      medicationId: medicationId ?? this.medicationId,
      medicationName: medicationName ?? this.medicationName,
      dosage: dosage ?? this.dosage,
      frequency: frequency ?? this.frequency,
      route: route ?? this.route,
      durationDays: durationDays ?? this.durationDays,
      quantity: quantity ?? this.quantity,
      instructions: instructions ?? this.instructions,
      isDispensed: isDispensed ?? this.isDispensed,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'PrescriptionItem(id: $id, tenantId: $tenantId, prescriptionId: $prescriptionId, medicationId: $medicationId, medicationName: $medicationName, dosage: $dosage, frequency: $frequency, route: $route, durationDays: $durationDays, quantity: $quantity, instructions: $instructions, isDispensed: $isDispensed, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
