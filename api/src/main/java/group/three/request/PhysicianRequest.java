package group.three.request;

import group.three.model.Physician;
import group.three.model.Clinic;
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
public class PhysicianRequest extends UserRequest {
    @Nonnull
    private Long clinicId;

    @Nonnull
    private String cips;

    @Nonnull
    private String specialty;

    @Override
    public User toUserEntity() {
        final User user = super.toUserEntity();
        user.setUserType(UserType.PHYSICIAN);
        return user;
    }

    public Physician toPhysicianEntity(User user, Clinic clinic) {
        return Physician.builder()
                .user(user)
                .clinic(clinic)
                .cips(cips)
                .specialty(specialty)
                .build();
    }
}
