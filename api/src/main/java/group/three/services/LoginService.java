package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.ws.rs.core.Response;

@ApplicationScoped
public class LoginService {
    public Response userLogin() {
        // TODO: make a proper login
        return Response.ok("Login").build();
    }
}
