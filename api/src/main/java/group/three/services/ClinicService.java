package group.three.services;

import group.three.model.Clinic;
import group.three.repository.ClinicRepository;
import group.three.request.ClinicRequest;
import group.three.utils.JsonResource;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

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
                .entity(JsonResource.message("clínica não encontrada"))
                .build();
    }

    public Response storeClinic(ClinicRequest clinic){
        if(clinicRepository.insert(clinic.toClinicEntity())){
            final Clinic storedClinic = clinic.toClinicEntity();

            return Response
                    .status(Response.Status.CREATED)
                    .entity(JsonResource.messageWithData("clínica adicionada com sucesso", storedClinic.toJsonResource()))
                    .build();
        }

        return Response
                .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                .entity(JsonResource.message("operação realizada sem sucesso"))
                .build();
    }

    public Response updateClinic(Long id, ClinicRequest clinic){
        if(clinicRepository.findById(id) != null){
            if(clinicRepository.insert(clinic.toClinicEntity())) {
                final Clinic updatedClinic = clinicRepository.findById(id);

                return Response
                        .status(Response.Status.OK)
                        .entity(JsonResource.messageWithData("operação realizada com sucesso", updatedClinic.toJsonResource()))
                        .build();
        }

        return Response
                .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                .entity(JsonResource.message("operação não realizada"))
                .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message("clínica não encontrada"))
                .build();
    }


    public Response deleteClinicById(long id) {
        if(clinicRepository.findById(id) != null && !clinicRepository.deleteById(id)) {
            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonResource.message("operação não realizada"))
                    .build();
        }

        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message("clínica não encontrada"))
                .build();
    }



}
