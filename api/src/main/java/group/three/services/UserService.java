package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.ws.rs.core.Response;

import group.three.model.User;

@ApplicationScoped
public class UserService {
    public Response getUsers() {
        return Response.ok("TODO").build(); // TODO
    }

    public Response getUserById(Long id) {
        return Response.ok("TODO").build(); // TODO
    }

    public Response storeUser(User user) {
        return Response.ok("TODO").build(); // TODO
    }

    public Response updateUser(Long id, User user) {
        return Response.ok("TODO").build(); // TODO
    }

    public Response deleteUserById(Long id) {
        return Response.ok("TODO").build(); // TODO
    }
}
