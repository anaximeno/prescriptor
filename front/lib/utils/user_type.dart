enum UserType { physician, recepcionist, pacient, pharmacist }

extension ExtendedUserType on UserType {
  bool isPhysician() => this == UserType.physician;
  bool isRecepcionist() => this == UserType.recepcionist;
  bool isPacient() => this == UserType.pacient;
  bool isPharmacist() => this == UserType.pharmacist;

  String stringRepresentation() {
    switch (this) {
      case UserType.pacient:
        return "PACIENT";
      case UserType.pharmacist:
        return "PHARMACIST";
      case UserType.physician:
        return "PHYSICIAN";
      case UserType.recepcionist:
        return "RECEPCIONIST";
    }
  }
}

abstract class UserTypeUtil {
  static UserType? fromString(String value) {
    switch (value) {
      case "PACIENT":
        return UserType.pacient;
      case "PHARMACIST":
        return UserType.pharmacist;
      case "PHYSICIAN":
        return UserType.physician;
      case "RECEPCIONIST":
        return UserType.recepcionist;
      default:
        return null;
    }
  }
}
