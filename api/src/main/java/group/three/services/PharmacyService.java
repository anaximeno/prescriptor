package group.three.services;

import group.three.model.Pharmacy;
import group.three.repository.PharmacyRepository;
import group.three.request.PharmacyRequest;
import group.three.utils.Constants;
import group.three.utils.JsonResource;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;

@ApplicationScoped
public class PharmacyService {
    @Inject
    PharmacyRepository pharmacyRepository;

    public Response getPharmacy(){
        return Response.ok(JsonResource.data(pharmacyRepository.listAll())).build();
    }

    public Response getPharmacyById(long id){
        final Pharmacy pharmacy = pharmacyRepository.findById(id);

        if(pharmacy != null){
            return Response.ok(JsonResource.data(pharmacy)).build();
        }
        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_PHARMACY_NOT_FOUND))
                .build();
    }

    public Response storePharmacy(PharmacyRequest pharmacy){
        if(pharmacyRepository.insert(pharmacy.toPharmacyEntity())){
            final Pharmacy storedPharmacy = pharmacy.toPharmacyEntity();

            return Response
                    .status(Response.Status.CREATED)
                    .entity(JsonResource.messageWithData(Constants.SERVICE_RESPONSE_PHARMACY_CREATED, storedPharmacy.toJsonResource()))
                    .build();
        }
        return Response
                .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                .build();
    }

    public Response updatePharmacy(long id, PharmacyRequest pharmacy){
        if(pharmacyRepository.findById(id) != null){
            if(pharmacyRepository.insert(pharmacy.toPharmacyEntity())){
                final Pharmacy updatedPharmacy = pharmacyRepository.findById(id);

                return Response
                        .status(Response.Status.OK)
                        .entity(JsonResource.messageWithData(Constants.SERVICE_RESPONSE_OK, updatedPharmacy.toJsonResource()))
                        .build();
            }
            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                    .build();
        }
        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_PHARMACY_NOT_FOUND))
                .build();
    }

    public Response deletePharmacyById(Long id){
        if(pharmacyRepository.findById(id) != null && !pharmacyRepository.deleteById(id)){
            return Response
                    .status(Response.Status.UNSUPPORTED_MEDIA_TYPE)
                    .entity(JsonResource.message(Constants.SERVICE_RESPONSE_UNSUPPORTED_MEDIA_TYPE))
                    .build();
        }
        return Response
                .status(Response.Status.NOT_FOUND)
                .entity(JsonResource.message(Constants.SERVICE_RESPONSE_PHARMACY_NOT_FOUND))
                .build();
    }
}
