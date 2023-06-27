package group.three.model;

import group.three.utils.JsonLike;
import group.three.utils.interfaces.IJsonResource;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.annotation.Nonnull;
import jakarta.persistence.*;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "pacients")
public class Pacient extends PanacheEntityBase implements IJsonResource {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Nonnull
    @OneToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
    private User user;

    private Boolean hasInsurance;

    public JsonLike toJsonResource() {
        return JsonLike.builder()
                .set("hasInsurance", getHasInsurance())
                .set("user", getUser().toJsonResource())
                .build();
    }
}
