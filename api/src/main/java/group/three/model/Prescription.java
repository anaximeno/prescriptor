package group.three.model;

import java.util.Date;

import jakarta.annotation.Nonnull;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "prescriptions")
public class Prescription {
    @Id
    @Nonnull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Nonnull
    @Column(name = "emission_date")
    private Date emissionDate;

    @Nonnull
    @Column(name = "expiration_date")
    private Date expirationDate;

    @Nonnull
    @ManyToOne(cascade = CascadeType.REMOVE, fetch = FetchType.LAZY)
    @JoinColumn(name = "pacient_id")
    private Pacient pacient;

    @Nonnull
    @ManyToOne(cascade = CascadeType.REMOVE, fetch = FetchType.LAZY)
    @JoinColumn(name = "physician_id")
    private Physician physician;

    @Nonnull
    @Column(name = "medicine_name")
    private String medicineName;

    @Nonnull
    @Column(name = "number_of_uses")
    @Builder.Default
    private Integer numberOfUses = 0;

    @Nonnull
    @Column(name = "auto_renovable")
    @Builder.Default
    private Boolean autoRenovable = false;

    @Nonnull
    private Integer quantity;

    @Nonnull
    private Integer frequency;

    private String observation;
}
