package group.three.repository;

import group.three.model.Physician;
import group.three.utils.interfaces.IExtendedPanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PhysicianRespository implements IExtendedPanacheRepository<Physician> {
}
