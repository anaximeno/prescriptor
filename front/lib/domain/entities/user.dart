import '../../utils/user_type.dart';
import '../../utils/gender.dart';

class UserEntity {
  String? name;
  String? lastName;
  String? username;
  String? password;
  String? homeAddress;
  String? phoneNumber;
  DateTime? birthDate;
  UserType? userType;
  Gender? gender;
  String? cni;
  int? nif;

  UserEntity({
    this.name,
    this.lastName,
    this.username,
    this.password,
    this.homeAddress,
    this.phoneNumber,
    this.birthDate,
    this.userType,
    this.gender,
    this.cni,
    this.nif,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'lastName': lastName,
        'username': username,
        'password': password,
        'homeAddress': homeAddress,
        'phomeNumber': phoneNumber,
        'gender': gender,
        'cni': cni,
        'nif': nif,
      }..removeWhere((key, value) => value == null);

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
        name: json['name'] as String?,
        lastName: json['lastName'] as String?,
        username: json['username'] as String?,
        password: json['password'] as String?,
        homeAddress: json['homeAddress'] as String?,
        phoneNumber: json['phoneNumber'] as String?,
        gender: GenderUtil.fromString(json['gender'] as String?),
        cni: json['cni'] as String?,
        nif: json['nif'] as int?,
      );
}
