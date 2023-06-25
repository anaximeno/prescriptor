package group.three.model;

import java.time.*;
import java.util.UUID;

import jakarta.annotation.Nonnull;
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
@Table(name = "users")
public class User {
    @Id
    @Nonnull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Nonnull
    private String username; // Could be email as well

    @Nonnull
    private String password;

    @Nonnull
    private String givenName;

    @Nonnull
    private String lastName;

    @Nonnull
    private Gender gender;

    @Nonnull
    private LocalDate birthDate;

    @Nonnull
    private String CNI;

    @Nonnull
    private byte NIF;

    @Nonnull
    private String endereco;

    private byte phoneNumber;
  
}

/*
 Na cada um di kes tabelas la dibaxo ten ki ten FK di user (ki é PK na tabela users ou seja id)

Dja na kes tabela dibaxo bu ta adiciona informaçons ke importante ten sobre es

Tipo pa physician e pa recepcionist és ten ki ten FK di clinica ke ta trabadja nel, 
ntom bu ten ki kria entidade clínica antes

E bu ta ba ta adiciona na kada kel ke di si competência

Por enquanto apenas kria kes tipos di users la ku ses infos, 
si bu ka consigue fz relaçon nta fz o ki bu fz push
 */
