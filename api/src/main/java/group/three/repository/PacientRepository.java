package group.three.repository;

import group.three.model.Pacient;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PacientRepository implements PanacheRepository<Pacient> {
    public Boolean insert(Pacient pacient) {
        persist(pacient);
        return isPersistent(pacient);
    }
}
