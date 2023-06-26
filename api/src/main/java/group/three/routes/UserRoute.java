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

import group.three.request.UserRequest;
import group.three.services.UserService;

@Path("/api/user")
@ApplicationScoped
@Produces(MediaType.APPLICATION_JSON)
public class UserRoute {
    @Inject
    UserService userService;

    @GET
    @Path("/")
    public Response show() {
        return userService.getUsers();
    }

    @GET
    @Path("/{id}")
    public Response index(@PathParam("id") Long id) {
        return userService.getUserById(id);
    }

    @POST
    @Path("/")
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public Response store(UserRequest user) {
        return userService.storeUser(user);
    }

    @PUT
    @Path("/{id}")
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    public Response update(@PathParam("id") Long id, UserRequest user) {
        return userService.updateUser(id, user);
    }

    @DELETE
    @Path("/{id}")
    @Transactional
    public Response delete(@PathParam("id") Long id) {
        return userService.deleteUserById(id);
    }
}
