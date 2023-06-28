package group.three.repository;

import group.three.model.Clinic;
import group.three.utils.interfaces.IExtendedPanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class ClinicRepository implements IExtendedPanacheRepository<Clinic> {
}
