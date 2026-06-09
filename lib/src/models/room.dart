class Room {
  final String? id;
  final String? tenantId;
  final String? roomNumber;
  final String? roomCode;
  final String? wardId;
  final String? wardName;
  final String? roomType;
  final int? capacity;
  final double? dailyRate;
  final bool? isActive;
  final DateTime? createdAt;

  Room({
    this.id,
    this.tenantId,
    this.roomNumber,
    this.roomCode,
    this.wardId,
    this.wardName,
    this.roomType,
    this.capacity,
    this.dailyRate,
    this.isActive,
    this.createdAt,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'] as String?,
      tenantId: json['tenantId'] as String?,
      roomNumber: json['roomNumber'] as String?,
      roomCode: json['roomCode'] as String?,
      wardId: json['wardId'] as String?,
      wardName: json['wardName'] as String?,
      roomType: json['roomType'] as String?,
      capacity: json['capacity'] as int?,
      dailyRate: (json['dailyRate'] as num?)?.toDouble(),
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tenantId': tenantId,
      'roomNumber': roomNumber,
      'roomCode': roomCode,
      'wardId': wardId,
      'wardName': wardName,
      'roomType': roomType,
      'capacity': capacity,
      'dailyRate': dailyRate,
      'isActive': isActive,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  Room copyWith({
    String? id,
    String? tenantId,
    String? roomNumber,
    String? roomCode,
    String? wardId,
    String? wardName,
    String? roomType,
    int? capacity,
    double? dailyRate,
    bool? isActive,
    DateTime? createdAt,
  }) {
    return Room(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      roomNumber: roomNumber ?? this.roomNumber,
      roomCode: roomCode ?? this.roomCode,
      wardId: wardId ?? this.wardId,
      wardName: wardName ?? this.wardName,
      roomType: roomType ?? this.roomType,
      capacity: capacity ?? this.capacity,
      dailyRate: dailyRate ?? this.dailyRate,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() {
    return 'Room{id: $id, roomNumber: $roomNumber, roomCode: $roomCode, wardName: $wardName, roomType: $roomType, capacity: $capacity, dailyRate: $dailyRate, isActive: $isActive}';
  }
}
