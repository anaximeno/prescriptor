package group.three.utils.interfaces;

import io.quarkus.hibernate.orm.panache.PanacheRepository;

public interface IExtendedPanacheRepository<T> extends PanacheRepository<T> {
    default boolean insert(T entity) {
        persist(entity);
        return isPersistent(entity);
    }
}
