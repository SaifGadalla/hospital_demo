class ErBed {
  final String? bedNumber;
  final String? bedType;
  final String? status;
  final bool? isActive;
  final String? bedCode;
  final String? erZoneId;

  ErBed({
    this.bedNumber,
    this.bedType,
    this.status,
    this.isActive,
    this.bedCode,
    this.erZoneId,
  });

  factory ErBed.fromJson(Map<String, dynamic> json) {
    return ErBed(
      bedNumber: json['bedNumber'],
      bedType: json['bedType'],
      status: json['status'],
      isActive: json['isActive'],
      bedCode: json['bedCode'],
      erZoneId: json['erZoneId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bedNumber': bedNumber,
      'bedType': bedType,
      'status': status,
      'isActive': isActive,
      'bedCode': bedCode,
      'erZoneId': erZoneId,
    };
  }

  ErBed copyWith({
    String? bedNumber,
    String? bedType,
    String? status,
    bool? isActive,
    String? bedCode,
    String? erZoneId,
  }) {
    return ErBed(
      bedNumber: bedNumber ?? this.bedNumber,
      bedType: bedType ?? this.bedType,
      status: status ?? this.status,
      isActive: isActive ?? this.isActive,
      bedCode: bedCode ?? this.bedCode,
      erZoneId: erZoneId ?? this.erZoneId,
    );
  }

  @override
  String toString() {
    return 'ErBed(bedNumber: $bedNumber, bedType: $bedType, status: $status, isActive: $isActive, bedCode: $bedCode, erZoneId: $erZoneId)';
  }
}
