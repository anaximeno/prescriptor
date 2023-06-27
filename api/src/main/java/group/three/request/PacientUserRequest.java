package group.three.request;

import group.three.model.Pacient;
import group.three.model.User;
import group.three.utils.enums.UserType;
import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Getter
@Setter
public class PacientUserRequest extends UserRequest {
    private Boolean hasInsurance;

    @Override
    public User toUserEntity() {
        final User user = super.toUserEntity();
        user.setUserType(UserType.PACIENT);
        return user;
    }

    public Pacient toPacientEntity(User user) {
        return Pacient.builder()
                .hasInsurance(hasInsurance)
                .user(user)
                .build();
    }
}
