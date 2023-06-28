package group.three.repository;

import group.three.model.Pharmacy;
import group.three.utils.interfaces.IExtendedPanacheRepository;

import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class PharmacyRepository implements IExtendedPanacheRepository<Pharmacy> {
}
