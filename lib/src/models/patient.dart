class Patient {
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final String? dateOfBirth;
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
  final String? emergencyContactRelation;
  final String? primaryInsuranceId;
  final String? insurancePolicyNumber;
  final String? insuranceMemberNumber;
  final bool? isVIP;
  final bool? isActive;

  Patient({
    this.firstName,
    this.lastName,
    this.middleName,
    this.dateOfBirth,
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
    this.emergencyContactRelation,
    this.primaryInsuranceId,
    this.insurancePolicyNumber,
    this.insuranceMemberNumber,
    this.isVIP,
    this.isActive,
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      firstName: json['firstName'],
      lastName: json['lastName'],
      middleName: json['middleName'],
      dateOfBirth: json['dateOfBirth'],
      gender: json['gender'],
      nationalId: json['nationalId'],
      passportNumber: json['passportNumber'],
      email: json['email'],
      phone: json['phone'],
      mobile: json['mobile'],
      address: json['address'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      bloodType: json['bloodType'],
      maritalStatus: json['maritalStatus'],
      nationality: json['nationality'],
      photoUrl: json['photoUrl'],
      emergencyContactName: json['emergencyContactName'],
      emergencyContactPhone: json['emergencyContactPhone'],
      emergencyContactRelation: json['emergencyContactRelation'],
      primaryInsuranceId: json['primaryInsuranceId'],
      insurancePolicyNumber: json['insurancePolicyNumber'],
      insuranceMemberNumber: json['insuranceMemberNumber'],
      isVIP: json['isVIP'],
      isActive: json['isActive'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'middleName': middleName,
      'dateOfBirth': dateOfBirth,
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
      'emergencyContactRelation': emergencyContactRelation,
      'primaryInsuranceId': primaryInsuranceId,
      'insurancePolicyNumber': insurancePolicyNumber,
      'insuranceMemberNumber': insuranceMemberNumber,
      'isVIP': isVIP,
      'isActive': isActive,
    };
  }

  Patient copyWith({
    String? firstName,
    String? lastName,
    String? middleName,
    String? dateOfBirth,
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
    String? emergencyContactRelation,
    String? primaryInsuranceId,
    String? insurancePolicyNumber,
    String? insuranceMemberNumber,
    bool? isVIP,
    bool? isActive,
  }) {
    return Patient(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      middleName: middleName ?? this.middleName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
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
      emergencyContactPhone: emergencyContactPhone ?? this.emergencyContactPhone,
      emergencyContactRelation: emergencyContactRelation ?? this.emergencyContactRelation,
      primaryInsuranceId: primaryInsuranceId ?? this.primaryInsuranceId,
      insurancePolicyNumber: insurancePolicyNumber ?? this.insurancePolicyNumber,
      insuranceMemberNumber: insuranceMemberNumber ?? this.insuranceMemberNumber,
      isVIP: isVIP ?? this.isVIP,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  String toString() {
    return 'Patient(firstName: $firstName, lastName: $lastName, middleName: $middleName, dateOfBirth: $dateOfBirth, gender: $gender, nationalId: $nationalId, passportNumber: $passportNumber, email: $email, phone: $phone, mobile: $mobile, address: $address, city: $city, state: $state, country: $country, bloodType: $bloodType, maritalStatus: $maritalStatus, nationality: $nationality, photoUrl: $photoUrl, emergencyContactName: $emergencyContactName, emergencyContactPhone: $emergencyContactPhone, emergencyContactRelation: $emergencyContactRelation, primaryInsuranceId: $primaryInsuranceId, insurancePolicyNumber: $insurancePolicyNumber, insuranceMemberNumber: $insuranceMemberNumber, isVIP: $isVIP, isActive: $isActive)';
  }
}
