package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

import group.three.model.User;
import group.three.model.UserLogin;
import group.three.repository.UserRepository;
import group.three.utils.JsonLike;

@ApplicationScoped
public class LoginService {
    @Inject
    UserRepository userRepository;

    public Response userLogin(UserLogin userLogin) {
        final User user = userRepository.findByUsername(userLogin.getUsername());

        if (user != null && user.getPassword() == userLogin.getPassword()) {
            return Response.ok(JsonLike.messageWithData("Success", user)).build();
        }

        // TODO: should return a token to use in the app
        return Response
                .status(Response.Status.UNAUTHORIZED)
                .entity(JsonLike.message("Username or password is incorrect"))
                .build();
    }
}
