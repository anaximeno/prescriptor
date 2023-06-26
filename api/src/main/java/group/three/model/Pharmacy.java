package group.three.model;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.*;
import jakarta.annotation.Nonnull;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "pharmacies")
public class Pharmacy implements Serializable {

    @Nonnull
    private String name;

    @Nonnull
    private LocalDate dateOfFoundation;

    // @Nonnull
    // private DateTimeFormatter afterHoursService; // XXX: ???
}
