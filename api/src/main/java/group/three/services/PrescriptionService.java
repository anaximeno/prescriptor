package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.ws.rs.core.Response;

import group.three.model.Prescription;

@ApplicationScoped
public class PrescriptionService {
    public Response getPrescriptions() {
        return Response.ok("TODO").build(); // TODO
    }

    public Response getPrescriptionById(Long id) {
        return Response.ok("TODO").build(); // TODO
    }

    public Response storePrescription(Prescription prescription) {
        return Response.ok("TODO").build(); // TODO
    }

    public Response updatePrescription(Long id, Prescription prescription) {
        return Response.ok("TODO").build(); // TODO
    }

    public Response deletePrescriptionById(Long id) {
        return Response.ok("TODO").build(); // TODO
    }
}
