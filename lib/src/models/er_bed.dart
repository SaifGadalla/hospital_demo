class ErBed {
  final String? id;
  final String? bedNumber;
  final String? bedCode;
  final String? erZoneId;
  final String? bedType;
  final String? status;
  final bool? isActive;
  final DateTime? createdAt;

  ErBed({
    this.id,
    this.bedNumber,
    this.bedType,
    this.status,
    this.isActive,
    this.bedCode,
    this.erZoneId,
    this.createdAt,
  });

  factory ErBed.fromJson(Map<String, dynamic> json) {
    return ErBed(
      id: json['id'],
      bedNumber: json['bedNumber'],
      bedType: json['bedType'],
      status: json['status'],
      isActive: json['isActive'],
      bedCode: json['bedCode'],
      erZoneId: json['erZoneId'],
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bedNumber': bedNumber,
      'bedCode': bedCode,
      'erZoneId': erZoneId,
      'bedType': bedType,
      'status': status,
      'isActive': isActive,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  ErBed copyWith({
    String? id,
    String? bedNumber,
    String? bedCode,
    String? erZoneId,
    String? bedType,
    String? status,
    bool? isActive,
    DateTime? createdAt,
  }) {
    return ErBed(
      id: id ?? this.id,
      bedNumber: bedNumber ?? this.bedNumber,
      bedCode: bedCode ?? this.bedCode,
      erZoneId: erZoneId ?? this.erZoneId,
      bedType: bedType ?? this.bedType,
      status: status ?? this.status,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() {
    return 'ErBed(id: $id, bedNumber: $bedNumber, bedCode: $bedCode, erZoneId: $erZoneId, bedType: $bedType, status: $status, isActive: $isActive, createdAt: $createdAt)';
  }
}
