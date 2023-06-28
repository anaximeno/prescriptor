package group.three.model;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import group.three.utils.JsonResource;
import group.three.utils.enums.Gender;
import group.three.utils.enums.UserType;
import group.three.utils.interfaces.IJsonResource;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@ToString
@Setter
@Entity
@Table(name = "users")
public class User extends PanacheEntityBase implements IJsonResource {
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
    private String birthDate;

    @Nonnull
    private String cni;

    @Nonnull
    private Long nif;

    @Nonnull
    @Column(name = "user_type")
    private UserType userType;

    @Nonnull
    @Column(name = "home_address")
    private String homeAddress;

    @Column(name = "phone_number")
    private String phoneNumber;

    public JsonResource toJsonResource() {
        return JsonResource.builder()
                .set("id", getId())
                .set("name", getName())
                .set("nif", getNif())
                .set("cni", getCni())
                .set("lastName", getLastName())
                .set("birthDate", getBirthDate())
                .set("phoneNumber", getPhoneNumber())
                .set("homeAddress", getHomeAddress())
                .set("userType", getUserType())
                .set("gender", getGender())
                .build();
    }
}