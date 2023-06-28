package group.three.request;

import java.time.LocalDate;

import group.three.model.Pharmacy;
import jakarta.annotation.Nonnull;
import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Builder
@Getter
@Setter
public class PharmacyRequest {
    @Nonnull
    private String name;
    @Nonnull
    private String dateOfFoundation;

    public Pharmacy toPharmacyEntity(){
        return Pharmacy.builder()
                .name(getName())
                .dateOfFoundation(getDateOfFoundation())
                .build();
    }
}
