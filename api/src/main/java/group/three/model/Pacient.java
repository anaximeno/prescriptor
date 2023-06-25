package group.three.model;

import java.io.Serializable;
import java.util.Date;
import java.util.UUID;
import lombok.*;
import jakarta.persistence.*;
import jakarta.annotation.Nonnull;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "pacients")
public class Pacient implements Serializable{
    
    @Id
    @Nonnull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Nonnull
    private String name;

    @Nonnull
    private Date dob;//date of birth

    @Nonnull
    private String CNI;

    @Nonnull
    private byte NIF;

}
