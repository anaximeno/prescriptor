package group.three.utils;

public enum UserType {
    PHYSICIAN,
    RECEPCIONIST,
    PACIENT,
    PHARMACIST;

    public static Boolean isPhysician(UserType type) {
        return type == UserType.PHYSICIAN;
    }

    public static Boolean isRecepcionist(UserType type) {
        return type == UserType.RECEPCIONIST;
    }

    public static Boolean isPacient(UserType type) {
        return type == UserType.PACIENT;
    }

    public static Boolean isPharmacist(UserType type) {
        return type == UserType.PHARMACIST;
    }
}
