package group.three.request;

import group.three.model.Clinic;
import group.three.model.Receptionist;
import group.three.model.User;
import group.three.utils.enums.UserType;

import jakarta.annotation.Nonnull;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Getter
@Setter
public class ReceptionistRequest extends UserRequest {
    @Nonnull
    private Long clinicId;

    @Nonnull
    private String department;

    private String specialty;

    private String startingDate;

    @Override
    public User toUserEntity() {
        final User user = super.toUserEntity();
        user.setUserType(UserType.RECEPCIONIST);
        return user;
    }

    public Receptionist toReceptionistEntity(User user, Clinic clinic) {
        return Receptionist.builder()
                .user(user)
                .clinic(clinic)
                .department(department)
                .specialty(specialty)
                .startingDate(startingDate)
                .build();
    }
}
