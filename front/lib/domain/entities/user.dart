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
        'cni': cni,
        'nif': nif,
        'name': name,
        'lastName': lastName,
        'birthDate': birthDate,
        'username': username,
        'password': password,
        'homeAddress': homeAddress,
        'phomeNumber': phoneNumber,
        'gender': gender?.stringRepresentation(),
        'userType': userType?.stringRepresentation(),
      }..removeWhere((key, value) => value == null);

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
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
}
