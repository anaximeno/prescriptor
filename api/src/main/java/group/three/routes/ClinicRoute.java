package group.three.routes;

import group.three.request.ClinicRequest;
import group.three.services.ClinicService;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/api/clinic")
@ApplicationScoped
@Produces(MediaType.APPLICATION_JSON)
public class ClinicRoute {
    @Inject
    ClinicService clinicService;

    @GET
    @Path("/")
    public Response show(){
        return clinicService.getClinic();
    }

    @GET
    @Path("{id}")
    public Response index(@PathParam("id") Long id){
        return clinicService.getClinicById(id);
    }

    @POST
    @Path("/")
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public Response store(ClinicRequest clinic){
        return clinicService.storeClinic(clinic);
    }

    @PUT
    @Path("/{id}")
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public Response update(@PathParam("id") Long id, ClinicRequest clinic){
        return clinicService.updateClinic(id, clinic);
    }

    @DELETE
    @Path("/{id}")
    @Transactional
    public Response delete(@PathParam("id") Long id){
        return clinicService.deleteClinicById(id);
    }
}
