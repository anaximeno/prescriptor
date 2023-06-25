package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.ws.rs.core.Response;

import group.three.model.UserLogin;

@ApplicationScoped
public class LoginService {
    public Response userLogin(UserLogin userLogin) {
        return Response.ok("Login").build();
    }
}
