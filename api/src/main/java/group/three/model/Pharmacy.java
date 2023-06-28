package group.three.model;

import java.time.LocalDate;

import group.three.utils.JsonResource;
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
    @Column(name = "date_of_foundation")
    private String dateOfFoundation;

    // @Nonnull
    // private DateTimeFormatter afterHoursService; // XXX: ???

    public JsonResource toJsonResource() {
        return JsonResource.builder()
                .set("id", getId())
                .set("name", getName())
                .set("dateOfFoundation", getDateOfFoundation())
                .build();
    }
}
