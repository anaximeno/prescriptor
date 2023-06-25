package group.three.model;

import jakarta.persistence.*;
import jakarta.annotation.Nonnull;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "physicians")
public class Physician {
    @Nonnull
    private String cips;

    @Nonnull
    private String specialty;

}
