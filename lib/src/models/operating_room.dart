class OperatingRoom {
  final String? roomNumber;
  final String? roomType;
  final String? status;
  final String? equipmentList;
  final bool? isActive;
  final String? roomCode;

  OperatingRoom({
    this.roomNumber,
    this.roomType,
    this.status,
    this.equipmentList,
    this.isActive,
    this.roomCode,
  });

  factory OperatingRoom.fromJson(Map<String, dynamic> json) {
    return OperatingRoom(
      roomNumber: json['roomNumber'],
      roomType: json['roomType'],
      status: json['status'],
      equipmentList: json['equipmentList'],
      isActive: json['isActive'],
      roomCode: json['roomCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'roomNumber': roomNumber,
      'roomType': roomType,
      'status': status,
      'equipmentList': equipmentList,
      'isActive': isActive,
      'roomCode': roomCode,
    };
  }

  OperatingRoom copyWith({
    String? roomNumber,
    String? roomType,
    String? status,
    String? equipmentList,
    bool? isActive,
    String? roomCode,
  }) {
    return OperatingRoom(
      roomNumber: roomNumber ?? this.roomNumber,
      roomType: roomType ?? this.roomType,
      status: status ?? this.status,
      equipmentList: equipmentList ?? this.equipmentList,
      isActive: isActive ?? this.isActive,
      roomCode: roomCode ?? this.roomCode,
    );
  }

  @override
  String toString() {
    return 'OperatingRoom(roomNumber: $roomNumber, roomType: $roomType, status: $status, equipmentList: $equipmentList, isActive: $isActive, roomCode: $roomCode)';
  }
}
