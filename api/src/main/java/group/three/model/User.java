package group.three.model;

import java.time.LocalDate;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import lombok.*;

import group.three.utils.JsonLike;
import group.three.utils.UserType;
import group.three.utils.interfaces.IJsonResource;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "users")
public class User implements IJsonResource {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Nonnull
    private String username;

    @Nonnull
    private String password;

    @Nonnull
    private String name;

    @Nonnull
    @Column(name = "last_name")
    private String lastName;

    @Nonnull
    private Gender gender;

    @Nonnull
    @Column(name = "birth_date")
    private LocalDate birthDate;

    @Nonnull
    private String cni;

    @Nonnull
    private Long nif;

    @Column(name = "user_type")
    private UserType userType;

    @Nonnull
    private String homeAddress;

    private String phoneNumber;

    public JsonLike toJsonResource() {
        return JsonLike
                .from("name", getName())
                .add("nif", getNif())
                .add("cni", getCni())
                .add("lastName", getLastName())
                .add("birthDate", getBirthDate())
                .add("phoneNumber", getPhoneNumber())
                .add("homeAddress", getHomeAddress())
                .add("userType", getUserType());
    }
}