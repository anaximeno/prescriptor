package group.three.request;

import group.three.model.Pacient;
import group.three.model.User;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Getter
@Setter
public class PacientUserRequest extends UserRequest {
    private Boolean hasInsurance;

    public Pacient toPacientEntity(User user) {
        return Pacient.builder()
            .hasInsurance(hasInsurance)
            .user(user)
            .build();
    }
}
