package group.three.model;

import java.time.*;

import jakarta.annotation.Nonnull;

public class Pharmacist {
    @Nonnull
    private LocalDate startingDate;

    @Nonnull
    private LocalDateTime shift;
}
