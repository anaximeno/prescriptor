package group.three.repository;

import group.three.model.Pacient;
import group.three.utils.interfaces.IExtendedPanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PacientRepository implements IExtendedPanacheRepository<Pacient> {
}
