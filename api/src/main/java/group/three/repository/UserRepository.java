package group.three.repository;

import group.three.model.User;
import group.three.utils.interfaces.IExtendedPanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class UserRepository implements IExtendedPanacheRepository<User> {
    public User findByUsername(String username) {
        return find("username", username).firstResult();
    }
}
