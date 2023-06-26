package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

import group.three.model.Prescription;
import group.three.model.User;
import group.three.repository.PrescriptionRepository;
import group.three.repository.UserRepository;
import group.three.request.PrescriptionRequest;
import group.three.utils.JsonLike;

@ApplicationScoped
public class PrescriptionService {
    @Inject
    PrescriptionRepository prescriptionRepository;
    @Inject
    UserRepository userRepository;

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

    public Response storePrescription(PrescriptionRequest prescriptionRequest) {
        User physician = null;
        User pacient = null;

        if (prescriptionRequest.getPhysicianId() != null) {
            physician = userRepository.findById(prescriptionRequest.getPhysicianId());
        }

        if (prescriptionRequest.getPacientId() != null) {
            pacient = userRepository.findById(prescriptionRequest.getPacientId());
        }

        if (physician != null && pacient != null) {
            final Prescription prescription = Prescription.builder()
                    .emissionDate(prescriptionRequest.getEmissionDate())
                    .expirationDate(prescriptionRequest.getExpirationDate())
                    .medicineName(prescriptionRequest.getMedicineName())
                    .autoRenovable(prescriptionRequest.getAutoRenovable())
                    .quantity(prescriptionRequest.getQuantity())
                    .frequency(prescriptionRequest.getFrequency())
                    .observation(prescriptionRequest.getObservation())
                    .pacient(pacient)
                    .physician(physician)
                    .build();

            if (prescriptionRepository.insert(prescription)) {
                return Response
                        .status(Response.Status.CREATED)
                        .entity(JsonLike.messageWithData("receita médica adicionada com sucesso", prescription))
                        .build();
            }
        }

        return Response
                .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                .entity(JsonLike.message("operação realizada sem sucesso"))
                .build();
    }

    public Response updatePrescription(Long id, PrescriptionRequest prescriptionRequest) {
        // XXX: changing the physician and the pacient won't work with the current
        // algorithm
        final Prescription prescription = prescriptionRepository.findById(id);

        if (prescription != null) {
            prescription.setEmissionDate(prescriptionRequest.getExpirationDate());
            prescription.setAutoRenovable(prescriptionRequest.getAutoRenovable());
            prescription.setMedicineName(prescriptionRequest.getMedicineName());
            prescription.setQuantity(prescriptionRequest.getQuantity());
            prescription.setObservation(prescriptionRequest.getObservation());

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
