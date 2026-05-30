class Ward {
  final String? wardName;
  final String? departmentId;
  final String? wardType;
  final int? totalBeds;
  final String? nurseStationLocation;
  final bool? isActive;
  final String? wardCode;

  Ward({
    this.wardName,
    this.departmentId,
    this.wardType,
    this.totalBeds,
    this.nurseStationLocation,
    this.isActive,
    this.wardCode,
  });

  factory Ward.fromJson(Map<String, dynamic> json) {
    return Ward(
      wardName: json['wardName'],
      departmentId: json['departmentId'],
      wardType: json['wardType'],
      totalBeds: json['totalBeds'],
      nurseStationLocation: json['nurseStationLocation'],
      isActive: json['isActive'],
      wardCode: json['wardCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'wardName': wardName,
      'departmentId': departmentId,
      'wardType': wardType,
      'totalBeds': totalBeds,
      'nurseStationLocation': nurseStationLocation,
      'isActive': isActive,
      'wardCode': wardCode,
    };
  }

  Ward copyWith({
    String? wardName,
    String? departmentId,
    String? wardType,
    int? totalBeds,
    String? nurseStationLocation,
    bool? isActive,
    String? wardCode,
  }) {
    return Ward(
      wardName: wardName ?? this.wardName,
      departmentId: departmentId ?? this.departmentId,
      wardType: wardType ?? this.wardType,
      totalBeds: totalBeds ?? this.totalBeds,
      nurseStationLocation: nurseStationLocation ?? this.nurseStationLocation,
      isActive: isActive ?? this.isActive,
      wardCode: wardCode ?? this.wardCode,
    );
  }

  @override
  String toString() {
    return 'Ward(wardName: $wardName, departmentId: $departmentId, wardType: $wardType, totalBeds: $totalBeds, nurseStationLocation: $nurseStationLocation, isActive: $isActive, wardCode: $wardCode)';
  }
}
