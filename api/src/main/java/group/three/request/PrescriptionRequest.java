package group.three.request;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Builder
@Getter
@Setter
public class PrescriptionRequest {
    private String emissionDate;
    private String expirationDate;
    private Long pacientId;
    private Long physicianId;
    private String medicineName;
    private Boolean autoRenovable;
    private Integer quantity;
    private Integer frequency;
    private String observation;
    private int usePeriod;
    private Double medicineDose;
    private String medicineUseType;
    private String pacientName;
    private String pacientCni;
    private String pacientBirthDate;
    private String pacientPhone;
    private String physicianCips;
}
