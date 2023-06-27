import 'package:front/domain/entities/clinic.dart';
import 'package:front/domain/entities/user.dart';

import '../../utils/user_type.dart';
import '../../utils/gender.dart';

class PhysicianEntity extends UserEntity {
  int? id;
  String? cips;
  String? specialty;
  ClinicEntity? clinic;
  int? clinicId;

  PhysicianEntity({
    this.id,
    this.cips,
    this.specialty,
    this.clinic,
    this.clinicId,
    super.name,
    super.lastName,
    super.username,
    super.password,
    super.homeAddress,
    super.phoneNumber,
    super.birthDate,
    super.userType,
    super.gender,
    super.cni,
    super.nif,
  });

  factory PhysicianEntity.fromJson(Map<String, dynamic> json) =>
      PhysicianEntity(
        id: json['id'] as int?,
        cni: json['cni'] as String?,
        nif: json['nif'] as int?,
        name: json['name'] as String?,
        lastName: json['lastName'] as String?,
        birthDate: json['birthDate'],
        username: json['username'] as String?,
        password: json['password'] as String?,
        homeAddress: json['homeAddress'] as String?,
        phoneNumber: json['phoneNumber'] as String?,
        gender: GenderUtil.fromString(json['gender'] as String?),
        userType: UserTypeUtil.fromString(json['userType'] as String?),
        cips: json['cips'] as String?,
        specialty: json['specialty'] as String?,
        clinicId: json['clinicId'] as int?,
        clinic: json['clinic'] != null
            ? ClinicEntity.fromJson(json['clinic'] as Map<String, dynamic>)
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cips': cips,
        'specialty': specialty,
        'clinicId': clinicId,
        'clinic': clinic?.toJson(),
        ...super.toJson(),
      };
}
