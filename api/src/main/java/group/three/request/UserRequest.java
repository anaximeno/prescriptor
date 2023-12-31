package group.three.request;

import jakarta.annotation.Nonnull;

import group.three.model.User;
import group.three.utils.enums.Gender;
import group.three.utils.enums.UserType;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Builder
@Getter
@Setter
public class UserRequest {
    @Nonnull
    private String username;

    @Nonnull
    private String password;

    @Nonnull
    private String name;

    @Nonnull
    private String lastName;

    @Nonnull
    private String birthDate;

    @Nonnull
    private String cni;

    @Nonnull
    private Long nif;

    @Nonnull
    private String homeAddress;

    private String phoneNumber;

    @Nonnull
    private UserType userType;

    @Nonnull
    private Gender gender;

    public User toUserEntity() {
        return User.builder()
                .username(username)
                .password(password)
                .name(name)
                .lastName(lastName)
                .birthDate(birthDate)
                .cni(cni)
                .nif(nif)
                .homeAddress(homeAddress)
                .phoneNumber(phoneNumber)
                .userType(userType)
                .gender(gender)
                .build();
    }
}
