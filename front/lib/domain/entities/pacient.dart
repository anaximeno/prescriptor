import 'package:front/domain/entities/user.dart';

import '../../utils/user_type.dart';
import '../../utils/gender.dart';

class PacientEntity extends UserEntity {
  int? id;
  bool? hasInsurance;

  PacientEntity({
    this.id,
    this.hasInsurance,
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

  factory PacientEntity.fromJson(Map<String, dynamic> json) => PacientEntity(
        id: json['id'] as int?,
        hasInsurance: json['hasInsurance'],
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
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'hasInsurance': hasInsurance,
        ...super.toJson(),
      };
}
