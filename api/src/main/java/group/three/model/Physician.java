package group.three.model;

import java.io.Serializable;
import lombok.*;
import jakarta.persistence.*;
import jakarta.annotation.Nonnull;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "physicians")
public class Physician implements Serializable{

    @Nonnull
    private String CIPS;//numero de identificacao profissional

    @Nonnull
    private String specialty;

}
