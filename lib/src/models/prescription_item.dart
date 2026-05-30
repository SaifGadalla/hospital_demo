class PrescriptionItem {
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

  PrescriptionItem({
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
  });

  factory PrescriptionItem.fromJson(Map<String, dynamic> json) {
    return PrescriptionItem(
      prescriptionId: json['prescriptionId'],
      medicationId: json['medicationId'],
      medicationName: json['medicationName'],
      dosage: json['dosage'],
      frequency: json['frequency'],
      route: json['route'],
      durationDays: json['durationDays'],
      quantity: json['quantity'],
      instructions: json['instructions'],
      isDispensed: json['isDispensed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
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
    };
  }

  PrescriptionItem copyWith({
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
  }) {
    return PrescriptionItem(
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
    );
  }

  @override
  String toString() {
    return 'PrescriptionItem(prescriptionId: $prescriptionId, medicationId: $medicationId, medicationName: $medicationName, dosage: $dosage, frequency: $frequency, route: $route, durationDays: $durationDays, quantity: $quantity, instructions: $instructions, isDispensed: $isDispensed)';
  }
}
