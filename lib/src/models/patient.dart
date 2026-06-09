class Patient {
  final String? id;
  final String? tenantId;
  final String? mrn;
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final String? fullName;
  final DateTime? dateOfBirth;
  final int? age;
  final String? gender;
  final String? nationalId;
  final String? passportNumber;
  final String? email;
  final String? phone;
  final String? mobile;
  final String? address;
  final String? city;
  final String? state;
  final String? country;
  final String? bloodType;
  final String? maritalStatus;
  final String? nationality;
  final String? photoUrl;
  final String? emergencyContactName;
  final String? emergencyContactPhone;
  final String? emergencyContactRelationship;
  final String? primaryInsuranceId;
  final String? insurancePolicyNumber;
  final String? insuranceMemberNumber;
  final bool? isVIP;
  final bool? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Patient({
    this.id,
    this.tenantId,
    this.mrn,
    this.firstName,
    this.lastName,
    this.middleName,
    this.fullName,
    this.dateOfBirth,
    this.age,
    this.gender,
    this.nationalId,
    this.passportNumber,
    this.email,
    this.phone,
    this.mobile,
    this.address,
    this.city,
    this.state,
    this.country,
    this.bloodType,
    this.maritalStatus,
    this.nationality,
    this.photoUrl,
    this.emergencyContactName,
    this.emergencyContactPhone,
    this.emergencyContactRelationship,
    this.primaryInsuranceId,
    this.insurancePolicyNumber,
    this.insuranceMemberNumber,
    this.isVIP,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      id: json['id'] as String?,
      tenantId: json['tenantId'] as String?,
      mrn: json['mrn'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      middleName: json['middleName'] as String?,
      fullName: json['fullName'] as String?,
      dateOfBirth: json['dateOfBirth'] != null
          ? DateTime.parse(json['dateOfBirth'])
          : null,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      nationalId: json['nationalId'] as String?,
      passportNumber: json['passportNumber'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      mobile: json['mobile'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      bloodType: json['bloodType'] as String?,
      maritalStatus: json['maritalStatus'] as String?,
      nationality: json['nationality'] as String?,
      photoUrl: json['photoUrl'] as String?,
      emergencyContactName: json['emergencyContactName'] as String?,
      emergencyContactPhone: json['emergencyContactPhone'] as String?,
      emergencyContactRelationship: json['emergencyContactRelation'] as String?,
      primaryInsuranceId: json['primaryInsuranceId'] as String?,
      insurancePolicyNumber: json['insurancePolicyNumber'] as String?,
      insuranceMemberNumber: json['insuranceMemberNumber'] as String?,
      isVIP: json['isVIP'] as bool?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tenantId': tenantId,
      'mrn': mrn,
      'firstName': firstName,
      'lastName': lastName,
      'middleName': middleName,
      'fullName': fullName,
      'dateOfBirth': dateOfBirth?.toIso8601String(),
      'age': age,
      'gender': gender,
      'nationalId': nationalId,
      'passportNumber': passportNumber,
      'email': email,
      'phone': phone,
      'mobile': mobile,
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'bloodType': bloodType,
      'maritalStatus': maritalStatus,
      'nationality': nationality,
      'photoUrl': photoUrl,
      'emergencyContactName': emergencyContactName,
      'emergencyContactPhone': emergencyContactPhone,
      'emergencyContactRelation': emergencyContactRelationship,
      'primaryInsuranceId': primaryInsuranceId,
      'insurancePolicyNumber': insurancePolicyNumber,
      'insuranceMemberNumber': insuranceMemberNumber,
      'isVIP': isVIP,
      'isActive': isActive,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  Patient copyWith({
    String? id,
    String? tenantId,
    String? mrn,
    String? firstName,
    String? lastName,
    String? middleName,
    String? fullName,
    DateTime? dateOfBirth,
    int? age,
    String? gender,
    String? nationalId,
    String? passportNumber,
    String? email,
    String? phone,
    String? mobile,
    String? address,
    String? city,
    String? state,
    String? country,
    String? bloodType,
    String? maritalStatus,
    String? nationality,
    String? photoUrl,
    String? emergencyContactName,
    String? emergencyContactPhone,
    String? emergencyContactRelationship,
    String? primaryInsuranceId,
    String? insurancePolicyNumber,
    String? insuranceMemberNumber,
    bool? isVIP,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Patient(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      mrn: mrn ?? this.mrn,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      middleName: middleName ?? this.middleName,
      fullName: fullName ?? this.fullName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      nationalId: nationalId ?? this.nationalId,
      passportNumber: passportNumber ?? this.passportNumber,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      mobile: mobile ?? this.mobile,
      address: address ?? this.address,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      bloodType: bloodType ?? this.bloodType,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      nationality: nationality ?? this.nationality,
      photoUrl: photoUrl ?? this.photoUrl,
      emergencyContactName: emergencyContactName ?? this.emergencyContactName,
      emergencyContactPhone:
          emergencyContactPhone ?? this.emergencyContactPhone,
      emergencyContactRelationship:
          emergencyContactRelationship ?? this.emergencyContactRelationship,
      primaryInsuranceId: primaryInsuranceId ?? this.primaryInsuranceId,
      insurancePolicyNumber:
          insurancePolicyNumber ?? this.insurancePolicyNumber,
      insuranceMemberNumber:
          insuranceMemberNumber ?? this.insuranceMemberNumber,
      isVIP: isVIP ?? this.isVIP,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Patient{id: $id, tenantId: $tenantId, mrn: $mrn, firstName: $firstName, lastName: $lastName, middleName: $middleName, fullName: $fullName, dateOfBirth: $dateOfBirth, age: $age, gender: $gender, nationalId: $nationalId, passportNumber: $passportNumber, email: $email, phone: $phone, mobile: $mobile, address: $address, city: $city, state: $state, country: $country, bloodType: $bloodType, maritalStatus: $maritalStatus, nationality: $nationality, photoUrl: $photoUrl, emergencyContactName: $emergencyContactName, emergencyContactPhone: $emergencyContactPhone, emergencyContactRelation: $emergencyContactRelationship, primaryInsuranceId: $primaryInsuranceId, insurancePolicyNumber: $insurancePolicyNumber, insuranceMemberNumber: $insuranceMemberNumber, isVIP: $isVIP, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt}';
  }
}
