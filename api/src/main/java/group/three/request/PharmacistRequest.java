package group.three.request;

import group.three.model.Pharmacist;
import group.three.model.Pharmacy;
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
public class PharmacistRequest extends UserRequest {
    @Nonnull
    private Long pharmacyId;

    @Override
    public User toUserEntity() {
        final User user = super.toUserEntity();
        user.setUserType(UserType.PHARMACIST);
        return user;
    }

    public Pharmacist toPharmacistEntity(User user, Pharmacy pharmacy) {
        return Pharmacist.builder()
                .user(user)
                .pharmacy(pharmacy)
                .build();
    }
}
