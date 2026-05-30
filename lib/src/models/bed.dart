class Bed {
  final String? bedNumber;
  final String? bedType;
  final String? status;
  final double? dailyRate;
  final bool? isActive;
  final String? bedCode;
  final String? roomId;
  final String? wardId;

  Bed({
    this.bedNumber,
    this.bedType,
    this.status,
    this.dailyRate,
    this.isActive,
    this.bedCode,
    this.roomId,
    this.wardId,
  });

  factory Bed.fromJson(Map<String, dynamic> json) {
    return Bed(
      bedNumber: json['bedNumber'],
      bedType: json['bedType'],
      status: json['status'],
      dailyRate: json['dailyRate'],
      isActive: json['isActive'],
      bedCode: json['bedCode'],
      roomId: json['roomId'],
      wardId: json['wardId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bedNumber': bedNumber,
      'bedType': bedType,
      'status': status,
      'dailyRate': dailyRate,
      'isActive': isActive,
      'bedCode': bedCode,
      'roomId': roomId,
      'wardId': wardId,
    };
  }

  Bed copyWith({
    String? bedNumber,
    String? bedType,
    String? status,
    double? dailyRate,
    bool? isActive,
    String? bedCode,
    String? roomId,
    String? wardId,
  }) {
    return Bed(
      bedNumber: bedNumber ?? this.bedNumber,
      bedType: bedType ?? this.bedType,
      status: status ?? this.status,
      dailyRate: dailyRate ?? this.dailyRate,
      isActive: isActive ?? this.isActive,
      bedCode: bedCode ?? this.bedCode,
      roomId: roomId ?? this.roomId,
      wardId: wardId ?? this.wardId,
    );
  }

  @override
  String toString() {
    return 'Bed(bedNumber: $bedNumber, bedType: $bedType, status: $status, dailyRate: $dailyRate, isActive: $isActive, bedCode: $bedCode, roomId: $roomId, wardId: $wardId)';
  }
}
