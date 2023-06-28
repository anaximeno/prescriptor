package group.three.request;

import group.three.model.Clinic;

import java.time.LocalDate;
import jakarta.annotation.Nonnull;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Builder
@Getter
@Setter
public class ClinicRequest {
    @Nonnull
    private String name;
    @Nonnull
    private String dateOfFoundation;

    public Clinic toClinicEntity() {
        return Clinic.builder()
                .name(getName())
                .dateOfFoundation(getDateOfFoundation())
                .build();
    }
}
