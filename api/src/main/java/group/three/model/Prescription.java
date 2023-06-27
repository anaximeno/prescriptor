package group.three.model;

import group.three.utils.JsonResource;
import group.three.utils.interfaces.IJsonResource;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import jakarta.annotation.Nonnull;
import jakarta.persistence.CascadeType;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "prescriptions")
public class Prescription extends PanacheEntityBase implements IJsonResource {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "emission_date")
    private String emissionDate;

    @Column(name = "expiration_date")
    private String expirationDate;

    @Nonnull
    @ManyToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    @JoinColumn(name = "pacient_id")
    private Pacient pacient;

    @Nonnull
    @ManyToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    @JoinColumn(name = "physician_id")
    private Physician physician;

    @ManyToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    @JoinColumn(name = "pharmasist_id")
    private Pharmacist pharmacist;

    @Column(name = "medicine_name")
    private String medicineName;

    @Column(name = "number_of_uses")
    @Builder.Default
    private Integer numberOfUses = 0;

    @Column(name = "auto_renovable")
    @Builder.Default
    private Boolean autoRenovable = false;

    private Integer quantity;

    private Integer frequency;

    private String observation;

    @Column(name = "medicine_dose")
    private Double medicineDose;

    @Column(name = "medicine_use_type")
    private String medicineUseType;

    @Column(name = "use_period")
    private int usePeriod;

    public JsonResource toJsonResource() {
        return JsonResource.builder()
                .set("id", id)
                .set("emissionDate", emissionDate)
                .set("expirationDate", expirationDate)
                .set("pacient", pacient.toJsonResource())
                .set("pacientId", pacient.getId()) // XXX: redundant with pacient.id
                .set("physician", physician.toJsonResource())
                .set("physicianId", physician.getId()) // XXX: redundant with physician.id
                .set("pharmacist", pharmacist.toJsonResource())
                .set("pharmacistId", pharmacist.getId()) // XXX: redundant with pharmacist.id
                .set("medicineName", medicineName)
                .set("medicineDose", medicineDose)
                .set("medicineUseType", medicineUseType)
                .set("frequency", frequency)
                .set("observation", observation)
                .set("usePeriod", usePeriod)
                .set("autoRenovable", autoRenovable)
                .build();
    }
}
