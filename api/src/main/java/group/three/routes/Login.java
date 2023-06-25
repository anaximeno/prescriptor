package group.three.routes;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;

import jakarta.ws.rs.Path;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.Produces;

import group.three.services.LoginService;

@Path("/api/login")
@ApplicationScoped
@Produces(MediaType.APPLICATION_JSON)
public class Login {
    @Inject
    LoginService loginService;

    @POST
    @Path("/")
    public Response login() {
        return loginService.userLogin();
    }
}
