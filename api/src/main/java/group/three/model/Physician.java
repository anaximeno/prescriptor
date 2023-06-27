package group.three.model;

import jakarta.persistence.*;
import group.three.utils.JsonResource;
import group.three.utils.interfaces.IJsonResource;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.annotation.Nonnull;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "physicians")
public class Physician extends PanacheEntityBase implements IJsonResource {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Nonnull
    private String cips;

    @Nonnull
    private String specialty;

    @Nonnull
    @OneToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    private User user;

    // TODO
    // @Nonnull
    // @ManyToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    // private Clinic clinic;

    public JsonResource toJsonResource() {
        return JsonResource.builder()
                .set("cips", getCips())
                .set("speciality", getSpecialty())
                .set("user", getUser().toJsonResource())
                // .set("clinic", getClinic().toJsonResource()) // TODO
                .build();
    }
}
