package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

import group.three.model.User;
import group.three.model.Pacient;
import group.three.repository.PacientRepository;
import group.three.repository.UserRepository;
import group.three.request.PacientUserRequest;
import group.three.utils.JsonLike;

@ApplicationScoped
public class PacientUserService {
    @Inject
    UserRepository userRepository;
    @Inject
    PacientRepository pacientRepository;

    public Response getPacients() {
        return Response.ok(JsonLike.data(pacientRepository.listAll())).build();
    }

    public Response getPacientById(Long id) {
        final Pacient pacient = pacientRepository.findById(id);

        if (pacient != null) {
            return Response.ok(JsonLike.data(pacient)).build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonLike.message("paciente não encontrado"))
                .build();
    }

    public Response storePacient(PacientUserRequest pacientUserRequest) {
        final User user = pacientUserRequest.toUserEntity();

        if (userRepository.insert(user)) {
            final Pacient pacient = pacientUserRequest.toPacientEntity(user);

            if (pacientRepository.insert(pacient)) {
                return Response
                        .status(Response.Status.CREATED)
                        .entity(JsonLike.messageWithData("paciente adicionado com sucesso", pacient.toJsonResource()))
                        .build();
            } else {
                userRepository.delete(user);
            }
        }

        return Response
                .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                .entity(JsonLike.message("operação realizada sem sucesso"))
                .build();
    }

    public Response updatePacient(Long id, PacientUserRequest pacientUserRequest) {
        final Pacient pacient = pacientRepository.findById(id);

        if (pacient != null) {
            if (pacientRepository.insert(pacientUserRequest.toPacientEntity(pacient.getUser()))) {
                final Pacient updatedPacient = pacientRepository.findById(id);

                return Response
                        .status(Response.Status.OK)
                        .entity(JsonLike.messageWithData("operação realizada com sucesso",
                                updatedPacient.toJsonResource()))
                        .build();
            }

            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonLike.message("operação realizada sem sucesso"))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonLike.message("paciente não encontrado"))
                .build();
    }

    public Response deletePacientById(Long id) {
        if (pacientRepository.findById(id) != null && !pacientRepository.deleteById(id)) {
            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonLike.message("operação realizada sem sucesso"))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonLike.message("paciente não encontrado"))
                .build();
    }
}
