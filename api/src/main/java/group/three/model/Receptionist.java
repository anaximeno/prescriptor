package group.three.model;

import java.time.*;

import group.three.utils.JsonResource;
import group.three.utils.interfaces.IJsonResource;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import jakarta.annotation.Nonnull;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "receptionists")
public class Receptionist extends PanacheEntityBase implements IJsonResource {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Nonnull
    private String department;

    private String specialty;

    @Column(name = "starting_date")
    private LocalDate startingDate;

    @Nonnull
    @OneToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    private User user;

    // TODO
    // @Nonnull
    // @ManyToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    // private Clinic clinic;

    public JsonResource toJsonResource() {
        return JsonResource.builder()
                .set("id", getId())
                .set("specialty", getSpecialty())
                .set("department", getDepartment())
                .set("startingDate", getStartingDate())
                .set("user", getUser().toJsonResource())
                .build();
    }
}
