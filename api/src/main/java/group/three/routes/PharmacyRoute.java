package group.three.routes;

import group.three.request.PharmacyRequest;
import group.three.services.PharmacyService;
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

@Path("/api/pharmacy")
@ApplicationScoped
@Produces(MediaType.APPLICATION_JSON)
public class PharmacyRoute {
    @Inject
    PharmacyService pharmacyService;

    @GET
    @Path("/")
    public Response show(){
        return pharmacyService.getPharmacy();
    }

    @GET
    @Path("/{id}")
    public Response index(@PathParam("id") Long id){
        return pharmacyService.getPharmacyById(id);
    }

    @POST
    @Path("/")
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public Response store(PharmacyRequest pharmacy){
        return pharmacyService.storePharmacy(pharmacy);
    }

    @PUT
    @Path("/{id}")
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public Response update(@PathParam("id") Long id, PharmacyRequest pharmacy){
        return pharmacyService.updatePharmacy(id, pharmacy);
    }

    @DELETE
    @Path("{id}")
    @Transactional
    public Response delete(@PathParam("id") Long id){
        return pharmacyService.deletePharmacyById(id);
    }
}
