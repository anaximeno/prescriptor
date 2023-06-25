package group.three.model;

import lombok.*;
import jakarta.persistence.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "pacients")
public class Pacient {
    private Boolean hasInsurance;
}
