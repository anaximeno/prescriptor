package group.three.model;

import java.util.Date;

import group.three.utils.UserType;
import jakarta.annotation.Nonnull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
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
@Entity
@Table(name = "users")
public class User {
    @Id
    @Nonnull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Nonnull
    private String username; // Could be email as well

    @Nonnull
    private String password;

    @Nonnull
    private String name;

    @Nonnull
    @Column(name = "last_name")
    private String lastName;

    @Nonnull
    @Column(name = "birth_date")
    private Date birthDate;

    @Nonnull
    @Column(name = "cni")
    private String CNI;

    @Nonnull
    @Column(name = "nif")
    private byte NIF;

    @Column(name = "user_type")
    private UserType userType;
}
