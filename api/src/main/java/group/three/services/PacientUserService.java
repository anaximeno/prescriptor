package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

import group.three.model.User;
import group.three.model.Pacient;
import group.three.repository.PacientRepository;
import group.three.repository.UserRepository;
import group.three.request.PacientUserRequest;
import group.three.utils.Constants;
import group.three.utils.JsonResource;

@ApplicationScoped
public class PacientUserService {
    @Inject
    UserRepository userRepository;
    @Inject
    PacientRepository pacientRepository;

    public Response getPacients() {
        return Response.ok(JsonResource.data(pacientRepository.listAll())).build();
    }

    public Response getPacientById(Long id) {
        final Pacient pacient = pacientRepository.findById(id);

        if (pacient != null) {
            return Response.ok(JsonResource.data(pacient)).build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_PACIENT_NOT_FOUND))
                .build();
    }

    public Response storePacient(PacientUserRequest pacientUserRequest) {
        final User user = pacientUserRequest.toUserEntity();

        if (userRepository.insert(user)) {
            final Pacient pacient = pacientUserRequest.toPacientEntity(user);

            if (pacientRepository.insert(pacient)) {
                return Response
                        .status(Response.Status.CREATED)
                        .entity(JsonResource.messageWithData(Constants.SERVICE_RESPONSE_PACIENT_CREATED, pacient.toJsonResource()))
                        .build();
            } else {
                userRepository.delete(user);
            }
        }

        return Response
                .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                .build();
    }

    public Response updatePacient(Long id, PacientUserRequest pacientUserRequest) {
        final Pacient pacient = pacientRepository.findById(id);

        if (pacient != null) {
            if (pacientRepository.insert(pacientUserRequest.toPacientEntity(pacient.getUser()))) {
                final Pacient updatedPacient = pacientRepository.findById(id);

                return Response
                        .status(Response.Status.OK)
                        .entity(JsonResource.messageWithData(Constants.SERVICE_RESPONSE_OK,
                                updatedPacient.toJsonResource()))
                        .build();
            }

            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_PACIENT_NOT_FOUND))
                .build();
    }

    public Response deletePacientById(Long id) {
        if (pacientRepository.findById(id) != null && !pacientRepository.deleteById(id)) {
            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_PACIENT_NOT_FOUND))
                .build();
    }
}
