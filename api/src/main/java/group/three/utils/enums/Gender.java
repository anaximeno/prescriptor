package group.three.utils.enums;

public enum Gender {
    M,
    F;

    public static Boolean isMale(Gender gender) {
        return gender == Gender.M;
    }

    public static Boolean isFemaale(Gender gender) {
        return gender == Gender.F;
    }
}