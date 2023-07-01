package group.three.repository;

import group.three.model.Receptionist;
import group.three.utils.interfaces.IExtendedPanacheRepository;

import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class ReceptionistRepository implements IExtendedPanacheRepository<Receptionist> {
}
