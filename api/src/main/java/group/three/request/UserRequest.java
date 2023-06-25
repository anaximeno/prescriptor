package group.three.request;

import jakarta.annotation.Nonnull;

import java.util.Date;

import group.three.model.User;
import group.three.utils.interfaces.IEntityRequest;
import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Builder
@Getter
@Setter
public class UserRequest implements IEntityRequest<User> {
    @Nonnull
    private String username;

    @Nonnull
    private String password;

    @Nonnull
    private String name;

    @Nonnull
    private String lastName;

    @Nonnull
    private Date birthDate;

    @Nonnull
    private String cni;

    @Nonnull
    private Long nif;

    public User toEntity() {
        return User.builder()
                .username(username)
                .password(password)
                .name(name)
                .lastName(lastName)
                .birthDate(birthDate)
                .cni(cni)
                .nif(nif)
                .build();
    }
}
