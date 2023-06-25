package group.three.model;

import java.util.Date;
import java.util.UUID;

import jakarta.annotation.Nonnull;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Table(name = "users")
public class User {
    @Id
    @Nonnull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Nonnull
    private String username; // Could be email as well

    @Nonnull
    private String password;

    @Nonnull
    private String name;

    @Nonnull
    private String lastName;

    @Nonnull
    private Date birthDate;

    @Nonnull
    private String CNI;

    @Nonnull
    private byte NIF;
}
