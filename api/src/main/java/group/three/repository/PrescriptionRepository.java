package group.three.repository;

import group.three.model.Prescription;
import group.three.utils.interfaces.IExtendedPanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PrescriptionRepository implements IExtendedPanacheRepository<Prescription> {
}
