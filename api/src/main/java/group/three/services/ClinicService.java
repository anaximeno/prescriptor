package group.three.services;

import group.three.model.Clinic;
import group.three.repository.ClinicRepository;
import group.three.request.ClinicRequest;
import group.three.utils.Constants;
import group.three.utils.JsonResource;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

@ApplicationScoped
public class ClinicService {
    @Inject
    ClinicRepository clinicRepository;

    public Response getClinic(){
        return Response.ok(JsonResource.data(clinicRepository.listAll())).build();
    }

    public Response getClinicById(long id){
        final Clinic clinic = clinicRepository.findById(id);

        if(clinic != null){
            return Response.ok(JsonResource.data(clinic)).build();
        }
        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                .build();
    }

    public Response storeClinic(ClinicRequest clinic){
        if(clinicRepository.insert(clinic.toClinicEntity())){
            final Clinic storedClinic = clinic.toClinicEntity();

            return Response
                    .status(Response.Status.CREATED)
                    .entity(JsonResource.messageWithData(Constants.SERVICE_RESPONSE_CLINIC_CREATED, storedClinic.toJsonResource()))
                    .build();
        }
        return Response
                .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                .build();
    }

    public Response updateClinic(Long id, ClinicRequest clinic){
        if(clinicRepository.findById(id) != null){
            if(clinicRepository.insert(clinic.toClinicEntity())){
                final Clinic updatedClinic = clinicRepository.findById(id);

                return Response
                            .status(Response.Status.OK)
                            .entity(JsonResource.messageWithData(Constants.SERVICE_RESPONSE_CLINIC_CREATED, updatedClinic.toJsonResource()))
                            .build();
            }

            return Response
                            .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                            .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                            .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_CLINIC_NOT_FOUND))
                .build();
    }

    public Response deleteClinicById(Long id){
        if(clinicRepository.findById(id) != null && !clinicRepository.deleteById(id)){
            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                    .build();
        }

        return Response
                    .status(Response.Status.NOT_FOUND)
                    .entity(JsonResource.message(Constants.SERVICE_RESPONSE_CLINIC_NOT_FOUND))
                    .build();
    }
}
