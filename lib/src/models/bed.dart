class Bed {
  final String? id;
  final String? tenantId;
  final String? bedNumber;
  final String? bedCode;
  final String? roomId;
  final String? roomNumber;
  final String? wardId;
  final String? wardName;
  final String? bedType;
  final String? status;
  final double? dailyRate;
  final bool? isActive;
  final DateTime? createdAt;

  Bed({
    this.id,
    this.tenantId,
    this.bedNumber,
    this.bedCode,
    this.roomId,
    this.roomNumber,
    this.wardId,
    this.wardName,
    this.bedType,
    this.status,
    this.dailyRate,
    this.isActive,
    this.createdAt,
  });

  factory Bed.fromJson(Map<String, dynamic> json) {
    return Bed(
      id: json['id'],
      tenantId: json['tenantId'],
      bedNumber: json['bedNumber'],
      bedType: json['bedType'],
      status: json['status'],
      dailyRate: json['dailyRate'],
      isActive: json['isActive'],
      bedCode: json['bedCode'],
      roomId: json['roomId'],
      roomNumber: json['roomNumber'],
      wardId: json['wardId'],
      wardName: json['wardName'],
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tenantId': tenantId,
      'bedNumber': bedNumber,
      'bedCode': bedCode,
      'roomId': roomId,
      'roomNumber': roomNumber,
      "wardId": wardId,
      'wardName': wardName,
      'bedType': bedType,
      'status': status,
      'dailyRate': dailyRate,
      'isActive': isActive,
      'createdAt': createdAt,
    };
  }

  Bed copyWith({
    String? id,
    String? tenantId,
    String? bedNumber,
    String? bedType,
    String? status,
    double? dailyRate,
    bool? isActive,
    String? bedCode,
    String? roomId,
    String? wardId,
    String? roomNumber,
    String? wardName,
    DateTime? createdAt,
  }) {
    return Bed(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      bedNumber: bedNumber ?? this.bedNumber,
      bedType: bedType ?? this.bedType,
      status: status ?? this.status,
      dailyRate: dailyRate ?? this.dailyRate,
      isActive: isActive ?? this.isActive,
      bedCode: bedCode ?? this.bedCode,
      roomId: roomId ?? this.roomId,
      wardId: wardId ?? this.wardId,
      roomNumber: roomNumber ?? this.roomNumber,
      wardName: wardName ?? this.wardName,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() {
    return 'Bed{id: $id, tenantId: $tenantId, bedNumber: $bedNumber, bedCode: $bedCode, roomId: $roomId, roomNumber: $roomNumber, wardId: $wardId, wardName: $wardName, bedType: $bedType, status: $status, dailyRate: $dailyRate, isActive: $isActive, createdAt: $createdAt}';
  }
}
