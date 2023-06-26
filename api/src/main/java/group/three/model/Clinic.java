package group.three.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import jakarta.annotation.Nonnull;

public class Clinic {
    @Nonnull
    private String name;

    @Nonnull
    private LocalDate dateOfFoundation;

    @Nonnull
    private DateTimeFormatter workingHours;

}
