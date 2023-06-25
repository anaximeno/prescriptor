package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.ws.rs.core.Response;

@ApplicationScoped
public class UserService {
    public Response getUsers() {
        return Response.ok("TODO").build(); // TODO
    }

    public Response getUserById(Long id) {
        return Response.ok("TODO").build(); // TODO
    }

    public Response storeUser() {
        return Response.ok("TODO").build(); // TODO
    }

    public Response updateUser() {
        return Response.ok("TODO").build(); // TODO
    }

    public Response deleteUserById(Long id) {
        return Response.ok("TODO").build(); // TODO
    }
}
