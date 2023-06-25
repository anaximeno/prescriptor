package group.three.routes;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;

import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.Produces;

import group.three.services.PrescriptionService;

@Path("/api/prescription")
@ApplicationScoped
@Produces(MediaType.APPLICATION_JSON)
public class PrescriptionRoute {
    @Inject
    PrescriptionService prescriptionService;

    @GET
    @Path("/")
    public Response show() {
        return prescriptionService.getPrescriptions();
    }

    @GET
    @Path("/{id}")
    public Response index(@PathParam("id") Long id) {
        return prescriptionService.getPrescriptionById(id);
    }

    @POST
    @Path("/")
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public Response store() {
        return prescriptionService.storePrescription();
    }

    @PUT
    @Path("/{id}")
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public Response update() {
        return prescriptionService.updatePrescription();
    }

    @DELETE
    @Path("/{id}")
    @Transactional
    public Response delete(@PathParam("id") Long id) {
        return prescriptionService.deletePrescriptionById(id);
    }
}
