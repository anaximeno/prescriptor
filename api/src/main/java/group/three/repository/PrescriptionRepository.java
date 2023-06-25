package group.three.repository;

import group.three.model.Prescription;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PrescriptionRepository implements PanacheRepository<Prescription> {
    public Boolean insert(Prescription prescription) {
        persist(prescription);
        return isPersistent(prescription);
    }
}
