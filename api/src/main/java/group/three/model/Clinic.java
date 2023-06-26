package group.three.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.annotation.Nonnull;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

public class Clinic extends PanacheEntityBase {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Nonnull
    private String name;

    @Nonnull
    private LocalDate dateOfFoundation;

    @Nonnull
    private DateTimeFormatter workingHours;

}
