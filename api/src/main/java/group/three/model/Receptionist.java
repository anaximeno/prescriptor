package group.three.model;

import java.time.*;
import jakarta.annotation.Nonnull;

public class Receptionist {
    @Nonnull
    private String department;

    @Nonnull
    private String specialty;

    @Nonnull
    private LocalDate startingDate;
}
