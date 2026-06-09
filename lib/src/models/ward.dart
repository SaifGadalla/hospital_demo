class Ward {
  final String? id;
  final String? tenantId;
  final String? wardName;
  final String? wardCode;
  final String? departmentId;
  final String? wardType;
  final int? totalBeds;
  final int? availableBeds;
  final String? nurseStationLocation;
  final bool? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Ward({
    this.id,
    this.tenantId,
    this.wardName,
    this.wardCode,
    this.departmentId,
    this.wardType,
    this.totalBeds,
    this.availableBeds,
    this.nurseStationLocation,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  factory Ward.fromJson(Map<String, dynamic> json) {
    return Ward(
      id: json['id'],
      tenantId: json['tenantId'],
      wardName: json['wardName'],
      wardCode: json['wardCode'],
      departmentId: json['departmentId'],
      wardType: json['wardType'],
      totalBeds: json['totalBeds'],
      availableBeds: json['availableBeds'],
      nurseStationLocation: json['nurseStationLocation'],
      isActive: json['isActive'],
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.tryParse(json['updatedAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "tenantId": tenantId,
      "wardName": wardName,
      "wardCode": wardCode,
      "departmentId": departmentId,
      "wardType": wardType,
      "totalBeds": totalBeds,
      "availableBeds": availableBeds,
      "nurseStationLocation": nurseStationLocation,
      "isActive": isActive,
      "createdAt": createdAt?.toIso8601String(),
      "updatedAt": updatedAt?.toIso8601String(),
    };
  }

  Ward copyWith({
    String? id,
    String? tenantId,
    String? wardName,
    String? wardCode,
    String? departmentId,
    String? wardType,
    int? totalBeds,
    int? availableBeds,
    String? nurseStationLocation,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Ward(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      wardName: wardName ?? this.wardName,
      wardCode: wardCode ?? this.wardCode,
      departmentId: departmentId ?? this.departmentId,
      wardType: wardType ?? this.wardType,
      totalBeds: totalBeds ?? this.totalBeds,
      availableBeds: availableBeds ?? this.availableBeds,
      nurseStationLocation: nurseStationLocation ?? this.nurseStationLocation,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Ward(id: $id, tenantId: $tenantId, wardName: $wardName, wardCode: $wardCode, departmentId: $departmentId, wardType: $wardType, totalBeds: $totalBeds, availableBeds: $availableBeds, nurseStationLocation: $nurseStationLocation, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
