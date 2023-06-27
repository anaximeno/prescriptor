import 'package:front/domain/entities/pharmacy.dart';
import 'package:front/domain/entities/user.dart';

import '../../utils/user_type.dart';
import '../../utils/gender.dart';

class PharmacistEntity extends UserEntity {
  int? id;
  PharmacyEntity? pharmacy;
  int? pharmacyId;

  PharmacistEntity({
    this.id,
    this.pharmacy,
    this.pharmacyId,
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

  factory PharmacistEntity.fromJson(Map<String, dynamic> json) =>
      PharmacistEntity(
        id: json['id'],
        pharmacy: json['pharmacy'] != null
            ? PharmacyEntity.fromJson(json['pharmacy'] as Map<String, dynamic>)
            : null,
        pharmacyId: json['pharmacyId'],
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
        'pharmacy': pharmacy?.toJson(),
        'pharmacyId': pharmacyId,
        ...super.toJson(),
      };
}
