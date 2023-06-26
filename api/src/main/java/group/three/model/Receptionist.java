package group.three.model;

import java.time.*;

import jakarta.annotation.Nonnull;
import jakarta.persistence.CascadeType;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;

public class Receptionist {
    @Nonnull
    private String department;

    @Nonnull
    private String specialty;

    @Nonnull
    private LocalDate startingDate;

    @Nonnull
    @OneToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    private User user;

    // TODO
    // @Nonnull
    // @ManyToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    // private Clinic clinic;

}
