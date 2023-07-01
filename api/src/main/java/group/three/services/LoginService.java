package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

import group.three.model.User;
import group.three.repository.UserRepository;
import group.three.request.UserLoginRequest;
import group.three.utils.Constants;
import group.three.utils.JsonResource;

@ApplicationScoped
public class LoginService {
    @Inject
    UserRepository userRepository;

    public Response userLogin(UserLoginRequest userLogin) {
        final User user = userRepository.findByUsername(userLogin.getUsername());

        if (user != null && user.getPassword() == userLogin.getPassword()) {
            return Response.ok(JsonResource.messageWithData(Constants.SUCCESS, user)).build();
        }

        // TODO: should return a token to use in the app
        return Response
                .status(Response.Status.UNAUTHORIZED)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_LOGIN))
                .build();
    }
}
