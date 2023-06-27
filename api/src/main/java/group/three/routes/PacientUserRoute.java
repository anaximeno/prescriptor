package group.three.routes;

import group.three.request.PacientUserRequest;
import group.three.services.PacientUserService;

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

@Path("/api/user/pacient")
@ApplicationScoped
@Produces(MediaType.APPLICATION_JSON)
public class PacientUserRoute {
    @Inject
    PacientUserService pacientUserService;

    @GET
    @Path("/")
    public Response show() {
        return pacientUserService.getPacients();
    }

    @GET
    @Path("/{id}")
    public Response index(@PathParam("id") Long id) {
        return pacientUserService.getPacientById(id);
    }

    @POST
    @Path("/")
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public Response store(PacientUserRequest user) {
        return pacientUserService.storePacient(user);
    }

    @PUT
    @Path("/{id}")
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public Response update(@PathParam("id") Long id, PacientUserRequest user) {
        return pacientUserService.updatePacient(id, user);
    }

    @DELETE
    @Path("/{id}")
    @Transactional
    public Response delete(@PathParam("id") Long id) {
        return pacientUserService.deletePacientById(id);
    }
}
