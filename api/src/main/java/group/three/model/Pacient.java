package group.three.model;

import java.io.Serializable;
import lombok.*;
import jakarta.persistence.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "pacients")
public class Pacient implements Serializable{
    private String naturalidade;
}
