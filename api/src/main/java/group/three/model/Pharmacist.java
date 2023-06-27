package group.three.model;

import group.three.utils.JsonResource;
import group.three.utils.interfaces.IJsonResource;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.annotation.Nonnull;
import jakarta.persistence.CascadeType;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Entity;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Builder
@Getter
@Setter
@Entity
@Table(name = "pharmacists")
public class Pharmacist extends PanacheEntityBase implements IJsonResource {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    // @Nonnull
    // private LocalDate startingDate; // XXX: ???

    // @Nonnull
    // private LocalDateTime shift; // XXX: ???

    @Nonnull
    @OneToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    private User user;

    // TODO
    // @Nonnull
    // @ManyToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    // private Pharmacy pharmacy;

    public JsonResource toJsonResource() {
        return JsonResource.builder()
                .set("id", getId())
                .set("user", getUser().toJsonResource())
                // .set("pharmacy", getPharmacy().toJsonResource()) // TODO
                .build();
    }
}
