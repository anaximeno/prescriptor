package group.three.request;

import group.three.model.Pacient;
import group.three.model.Pharmacist;
import group.three.model.Physician;
import group.three.model.Prescription;
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
    private Long pacientId;
    @Nonnull
    private Long physicianId;

    private Long pharmacistId;

    private String emissionDate;
    private String expirationDate;
    private String medicineName;
    private Boolean autoRenovable;
    private Integer quantity;
    private Integer frequency;
    private String observation;
    private Double medicineDose;
    private String medicineUseType;
    private int usePeriod;

    public Prescription toPrescriptionEntity(Pacient pacient, Physician physician, Pharmacist pharmacist) {
        return Prescription.builder()
                .pacient(pacient)
                .physician(physician)
                .pharmacist(pharmacist)
                .emissionDate(emissionDate)
                .expirationDate(expirationDate)
                .medicineName(medicineName)
                .medicineDose(medicineDose)
                .autoRenovable(autoRenovable)
                .quantity(quantity)
                .frequency(frequency)
                .observation(observation)
                .usePeriod(usePeriod)
                .build();
    }
}
