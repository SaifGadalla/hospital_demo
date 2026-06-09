class OperatingRoom {
  final String? id;
  final String? roomNumber;
  final String? roomCode;
  final String? roomType;
  final String? status;
  final String? equipmentList;
  final bool? isActive;
  final DateTime? createdAt;

  OperatingRoom({
    this.id,
    this.roomNumber,
    this.roomCode,
    this.roomType,
    this.status,
    this.equipmentList,
    this.isActive,
    this.createdAt,
  });

  factory OperatingRoom.fromJson(Map<String, dynamic> json) {
    return OperatingRoom(
      id: json['id'] as String?,
      roomNumber: json['roomNumber'] as String?,
      roomCode: json['roomCode'] as String?,
      roomType: json['roomType'] as String?,
      status: json['status'] as String?,
      equipmentList: json['equipmentList'] as String?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'roomNumber': roomNumber,
      'roomCode': roomCode,
      'roomType': roomType,
      'status': status,
      'equipmentList': equipmentList,
      'isActive': isActive,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  OperatingRoom copyWith({
    String? id,
    String? roomNumber,
    String? roomCode,
    String? roomType,
    String? status,
    String? equipmentList,
    bool? isActive,
    DateTime? createdAt,
  }) {
    return OperatingRoom(
      id: id ?? this.id,
      roomNumber: roomNumber ?? this.roomNumber,
      roomCode: roomCode ?? this.roomCode,
      roomType: roomType ?? this.roomType,
      status: status ?? this.status,
      equipmentList: equipmentList ?? this.equipmentList,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() {
    return 'OperatingRoom{id: $id, roomNumber: $roomNumber, roomCode: $roomCode, roomType: $roomType, status: $status, equipmentList: $equipmentList, isActive: $isActive, createdAt: $createdAt}';
  }
}
