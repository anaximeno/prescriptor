package group.three.model;

import java.time.LocalDate;

import group.three.utils.JsonLike;
import group.three.utils.interfaces.IJsonResource;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.*;
import jakarta.annotation.Nonnull;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "pharmacies")
public class Pharmacy extends PanacheEntityBase implements IJsonResource {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Nonnull
    private String name;

    @Nonnull
    private LocalDate dateOfFoundation;

    // @Nonnull
    // private DateTimeFormatter afterHoursService; // XXX: ???

    public JsonLike toJsonResource() {
        return JsonLike.builder()
                .set("id", getId())
                .set("name", getName())
                .set("dateOfFoundation", getDateOfFoundation())
                .build();
    }
}
