package group.three.request;

import java.time.LocalDate;

import jakarta.annotation.Nonnull;
import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Builder
@Getter
@Setter
public class PrescriptionRequest {
    @Nonnull
    private LocalDate emissionDate;
    @Nonnull
    private LocalDate expirationDate;
    @Nonnull
    private Long pacientId;
    @Nonnull
    private Long physicianId;
    @Nonnull
    private String medicineName;
    @Nonnull
    private Boolean autoRenovable;
    @Nonnull
    private Integer quantity;
    @Nonnull
    private Integer frequency;
    //
    private String observation;
}
