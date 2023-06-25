package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

import group.three.model.Prescription;
import group.three.repository.PrescriptionRepository;
import group.three.utils.JsonLike;

@ApplicationScoped
public class PrescriptionService {
    @Inject
    PrescriptionRepository prescriptionRepository;

    public Response getPrescriptions() {
        return Response.ok(JsonLike.data(prescriptionRepository.listAll())).build();
    }

    public Response getPrescriptionById(Long id) {
        final Prescription prescription = prescriptionRepository.findById(id);

        if (prescription != null) {
            return Response.ok(JsonLike.data(prescription)).build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonLike.message("receita médica não encontrada"))
                .build();
    }

    public Response storePrescription(Prescription prescription) {
        if (prescriptionRepository.insert(prescription)) {
            return Response
                    .status(Response.Status.CREATED)
                    .entity(JsonLike.messageWithData("receita médica adicionada com sucesso", prescription))
                    .build();
        }

        return Response
                .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                .entity(JsonLike.message("operação realizada sem sucesso"))
                .build();
    }

    public Response updatePrescription(Long id, Prescription prescription) {
        if (prescriptionRepository.findById(id) != null) {
            if (prescriptionRepository.insert(prescription)) {
                return Response
                        .status(Response.Status.OK)
                        .entity(JsonLike.message("operação realizada com sucesso"))
                        .build();
            }

            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonLike.message("operação realizada sem sucesso"))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonLike.message("receita médica não encontrada"))
                .build();
    }

    public Response deletePrescriptionById(Long id) {
        if (prescriptionRepository.findById(id) != null) {
            if (prescriptionRepository.deleteById(id)) {
                return Response
                        .status(Response.Status.OK)
                        .entity(JsonLike.message("operação realizada com sucesso"))
                        .build();
            }

            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonLike.message("operação realizada sem sucesso"))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonLike.message("receita médica não encontrada"))
                .build();
    }
}
