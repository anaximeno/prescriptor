package group.three.model;

import java.time.*;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import jakarta.annotation.Nonnull;
import jakarta.persistence.CascadeType;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;

public class Receptionist extends PanacheEntityBase {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

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
