package group.three.services;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.ws.rs.core.Response;

@ApplicationScoped
public class PrescriptionService {
    public Response getPrescriptions() {
        return Response.ok("TODO").build(); // TODO
    }

    public Response getPrescriptionById(Long id) {
        return Response.ok("TODO").build(); // TODO
    }

    public Response storePrescription() {
        return Response.ok("TODO").build(); // TODO
    }

    public Response updatePrescription() {
        return Response.ok("TODO").build(); // TODO
    }

    public Response deletePrescriptionById(Long id) {
        return Response.ok("TODO").build(); // TODO
    }
}
