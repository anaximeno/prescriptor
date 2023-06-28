package group.three.routes;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;

import jakarta.ws.rs.Path;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.FormParam;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.Produces;
import group.three.services.LoginService;
import group.three.request.UserLoginRequest;

@Path("/api/login")
@ApplicationScoped
@Produces(MediaType.APPLICATION_JSON)
public class LoginRoute {
    @Inject
    LoginService loginService;

    @POST
    @Path("/")
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public Response login(@FormParam("username") String username, @FormParam("password") String password) {
        return loginService.userLogin(UserLoginRequest.builder()
                .username(username)
                .password(password)
                .build());
    }
}
