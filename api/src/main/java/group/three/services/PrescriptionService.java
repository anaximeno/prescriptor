package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

import group.three.model.Pacient;
import group.three.model.Pharmacist;
import group.three.model.Physician;
import group.three.model.Prescription;
import group.three.repository.PacientRepository;
import group.three.repository.PharmacistRepository;
import group.three.repository.PhysicianRespository;
import group.three.repository.PrescriptionRepository;
import group.three.request.PrescriptionRequest;
import group.three.utils.Constants;
import group.three.utils.JsonResource;

@ApplicationScoped
public class PrescriptionService {
    @Inject
    PrescriptionRepository prescriptionRepository;
    @Inject
    PacientRepository pacientRepository;
    @Inject
    PhysicianRespository physicianRespository;
    @Inject
    PharmacistRepository pharmacistRepository;

    public Response getPrescriptions() {
        return Response.ok(JsonResource.data(prescriptionRepository.listAll())).build();
    }

    public Response getPrescriptionById(Long id) {
        final Prescription prescription = prescriptionRepository.findById(id);

        if (prescription != null) {
            return Response.ok(JsonResource.data(prescription)).build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_PRESCRIPTION_NOT_FOUND))
                .build();
    }

    public Response storePrescription(PrescriptionRequest prescriptionRequest) {
        Physician physician = physicianRespository.findById(prescriptionRequest.getPhysicianId());
        Pacient pacient = pacientRepository.findById(prescriptionRequest.getPacientId());
        Pharmacist pharmacist = pharmacistRepository.findById(prescriptionRequest.getPharmacistId());

        if (physician != null && pacient != null) {
            final Prescription prescription = prescriptionRequest.toPrescriptionEntity(pacient, physician, pharmacist);

            if (prescriptionRepository.insert(prescription)) {
                return Response
                        .status(Response.Status.CREATED)
                        .entity(JsonResource.messageWithData(Constants.SERVICE_RESPONSE_PRESCRIPTION_CREATED, prescription.toJsonResource()))
                        .build();
            }

        }

        return Response
                .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                .build();
    }

    public Response updatePrescription(Long id, PrescriptionRequest prescriptionRequest) {
        Physician physician = physicianRespository.findById(prescriptionRequest.getPhysicianId());
        Pacient pacient = pacientRepository.findById(prescriptionRequest.getPacientId());
        Pharmacist pharmacist = pharmacistRepository.findById(prescriptionRequest.getPharmacistId());

        if (physician != null && pacient != null && prescriptionRepository.findById(id) != null) {
            final Prescription prescription = prescriptionRequest.toPrescriptionEntity(pacient, physician, pharmacist);

            if (prescriptionRepository.insert(prescription)) {
                return Response
                        .status(Response.Status.OK)
                        .entity(JsonResource.messageWithData(Constants.SERVICE_RESPONSE_OK,
                                prescription.toJsonResource()))
                        .build();
            }

            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_PRESCRIPTION_NOT_FOUND))
                .build();
    }

    public Response deletePrescriptionById(Long id) {
        if (prescriptionRepository.findById(id) != null) {
            if (prescriptionRepository.deleteById(id)) {
                return Response
                        .status(Response.Status.OK)
                        .entity(JsonResource.message(Constants.SERVICE_RESPONSE_OK))
                        .build();
            }

            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_PRESCRIPTION_NOT_FOUND))
                .build();
    }
}
