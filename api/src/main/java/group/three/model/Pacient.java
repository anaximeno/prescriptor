package group.three.model;

import lombok.*;
import jakarta.annotation.Nonnull;
import jakarta.persistence.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "pacients")
public class Pacient {
    @Nonnull
    @OneToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    private User user;

    private Boolean hasInsurance;
}
