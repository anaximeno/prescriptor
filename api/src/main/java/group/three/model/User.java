package group.three.model;

import java.time.LocalDate;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import group.three.utils.JsonLike;
import group.three.utils.enums.Gender;
import group.three.utils.enums.UserType;
import group.three.utils.interfaces.IJsonResource;

import lombok.*;

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
    @Column(name = "home_address")
    private String homeAddress;

    @Column(name = "phone_number")
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
                .add("userType", getUserType())
                .add("gender", getGender());
    }
}