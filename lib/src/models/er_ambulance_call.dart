class ErAmbulanceCall {
  final String? callTime;
  final String? patientName;
  final int? age;
  final String? gender;
  final String? pickupLocation;
  final String? incidentType;
  final String? initialAssessment;
  final String? crewMembers;
  final String? notes;

  ErAmbulanceCall({
    this.callTime,
    this.patientName,
    this.age,
    this.gender,
    this.pickupLocation,
    this.incidentType,
    this.initialAssessment,
    this.crewMembers,
    this.notes,
  });

  factory ErAmbulanceCall.fromJson(Map<String, dynamic> json) {
    return ErAmbulanceCall(
      callTime: json['callTime'],
      patientName: json['patientName'],
      age: json['age'],
      gender: json['gender'],
      pickupLocation: json['pickupLocation'],
      incidentType: json['incidentType'],
      initialAssessment: json['initialAssessment'],
      crewMembers: json['crewMembers'],
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'callTime': callTime,
      'patientName': patientName,
      'age': age,
      'gender': gender,
      'pickupLocation': pickupLocation,
      'incidentType': incidentType,
      'initialAssessment': initialAssessment,
      'crewMembers': crewMembers,
      'notes': notes,
    };
  }

  ErAmbulanceCall copyWith({
    String? callTime,
    String? patientName,
    int? age,
    String? gender,
    String? pickupLocation,
    String? incidentType,
    String? initialAssessment,
    String? crewMembers,
    String? notes,
  }) {
    return ErAmbulanceCall(
      callTime: callTime ?? this.callTime,
      patientName: patientName ?? this.patientName,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      pickupLocation: pickupLocation ?? this.pickupLocation,
      incidentType: incidentType ?? this.incidentType,
      initialAssessment: initialAssessment ?? this.initialAssessment,
      crewMembers: crewMembers ?? this.crewMembers,
      notes: notes ?? this.notes,
    );
  }

  @override
  String toString() {
    return 'ErAmbulanceCall(callTime: $callTime, patientName: $patientName, age: $age, gender: $gender, pickupLocation: $pickupLocation, incidentType: $incidentType, initialAssessment: $initialAssessment, crewMembers: $crewMembers, notes: $notes)';
  }
}
