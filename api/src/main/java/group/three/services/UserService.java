package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

import group.three.model.User;
import group.three.repository.UserRepository;
import group.three.request.UserRequest;
import group.three.utils.JsonLike;

@ApplicationScoped
public class UserService {
    @Inject
    UserRepository userRepository;

    public Response getUsers() {
        return Response.ok(JsonLike.data(userRepository.listAll())).build();
    }

    public Response getUserById(Long id) {
        final User user = userRepository.findById(id);

        if (user != null) {
            return Response.ok(JsonLike.data(user)).build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonLike.message("usuário não encontrado"))
                .build();
    }

    public Response storeUser(UserRequest user) {
        if (userRepository.insert(user.toUserEntity())) {
            final User storedUser = userRepository.findByUsername(user.getUsername());

            return Response
                    .status(Response.Status.CREATED)
                    .entity(JsonLike.messageWithData("usuário adicionado com sucesso", storedUser.toJsonResource()))
                    .build();
        }

        return Response
                .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                .entity(JsonLike.message("operação realizada sem sucesso"))
                .build();
    }

    public Response updateUser(Long id, UserRequest user) {
        if (userRepository.findById(id) != null) {
            if (userRepository.insert(user.toUserEntity())) {
                final User updatedUser = userRepository.findById(id);

                return Response
                        .status(Response.Status.OK)
                        .entity(JsonLike.messageWithData("operação realizada com sucesso", updatedUser.toJsonResource()))
                        .build();
            }

            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonLike.message("operação realizada sem sucesso"))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonLike.message("usuário não encontrado"))
                .build();
    }

    public Response deleteUserById(Long id) {
        if (userRepository.findById(id) != null && !userRepository.deleteById(id)) {
            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonLike.message("operação realizada sem sucesso"))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonLike.message("usuário não encontrado"))
                .build();
    }
}
