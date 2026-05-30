class Room {
  final String? roomNumber;
  final String? roomType;
  final int? capacity;
  final double? dailyRate;
  final bool? isActive;
  final String? roomCode;
  final String? wardId;

  Room({
    this.roomNumber,
    this.roomType,
    this.capacity,
    this.dailyRate,
    this.isActive,
    this.roomCode,
    this.wardId,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      roomNumber: json['roomNumber'],
      roomType: json['roomType'],
      capacity: json['capacity'],
      dailyRate: json['dailyRate'],
      isActive: json['isActive'],
      roomCode: json['roomCode'],
      wardId: json['wardId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'roomNumber': roomNumber,
      'roomType': roomType,
      'capacity': capacity,
      'dailyRate': dailyRate,
      'isActive': isActive,
      'roomCode': roomCode,
      'wardId': wardId,
    };
  }

  Room copyWith({
    String? roomNumber,
    String? roomType,
    int? capacity,
    double? dailyRate,
    bool? isActive,
    String? roomCode,
    String? wardId,
  }) {
    return Room(
      roomNumber: roomNumber ?? this.roomNumber,
      roomType: roomType ?? this.roomType,
      capacity: capacity ?? this.capacity,
      dailyRate: dailyRate ?? this.dailyRate,
      isActive: isActive ?? this.isActive,
      roomCode: roomCode ?? this.roomCode,
      wardId: wardId ?? this.wardId,
    );
  }

  @override
  String toString() {
    return 'Room(roomNumber: $roomNumber, roomType: $roomType, capacity: $capacity, dailyRate: $dailyRate, isActive: $isActive, roomCode: $roomCode, wardId: $wardId)';
  }
}
