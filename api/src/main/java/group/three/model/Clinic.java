package group.three.model;

import java.time.LocalDate;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import group.three.utils.JsonResource;
import group.three.utils.interfaces.IJsonResource;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@ToString
@Builder
@Entity
@Getter
@Setter
@Table(name = "clinics")
public class Clinic extends PanacheEntityBase implements IJsonResource {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Nonnull
    private String name;

    @Nonnull
    @Column(name = "date_of_foundation")
    private LocalDate dateOfFoundation;

    // @Nonnull
    // private DateTimeFormatter workingHours;

    public JsonResource toJsonResource() {
        return JsonResource.builder()
                .set("id", getId())
                .set("name", getName())
                .set("dateOfFoundation", getDateOfFoundation())
                .build();
    }
}
