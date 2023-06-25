package group.three.routes;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;

import jakarta.ws.rs.Path;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.Produces;
import group.three.request.UserLoginRequest;
import group.three.services.LoginService;

@Path("/api/login")
@ApplicationScoped
@Produces(MediaType.APPLICATION_JSON)
public class LoginRoute {
    @Inject
    LoginService loginService;

    @POST
    @Path("/")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response login(UserLoginRequest userLogin) {
        return loginService.userLogin(userLogin);
    }
}
