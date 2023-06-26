enum Gender { M, F }

extension ExtendedGender on Gender {
  bool isMale() => this == Gender.M;
  bool isFemale() => this == Gender.F;

  String stringRepresentation() {
    switch (this) {
      case Gender.M:
        return "M";
      case Gender.F:
        return "F";
    }
  }
}

abstract class GenderUtil {
  static Gender? fromString(String? value) {
    switch (value) {
      case "M":
        return Gender.M;
      case "F":
        return Gender.F;
      default:
        return null;
    }
  }
}
