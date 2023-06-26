package group.three.repository;

import group.three.model.User;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class UserRepository implements PanacheRepository<User> {
    public User findByUsername(String username) {
        return find("username", username).firstResult();
    }

    public Boolean insert(User user) {
        persist(user);
        return isPersistent(user);
    }
}
