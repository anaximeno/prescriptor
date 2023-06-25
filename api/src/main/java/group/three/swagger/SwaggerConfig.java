package group.three.swagger;

import org.eclipse.microprofile.openapi.annotations.OpenAPIDefinition;
import org.eclipse.microprofile.openapi.annotations.info.Contact;
import org.eclipse.microprofile.openapi.annotations.info.Info;
import org.eclipse.microprofile.openapi.annotations.info.License;
import org.eclipse.microprofile.openapi.annotations.tags.Tag;

import group.three.constant.Constants;
import jakarta.ws.rs.core.Application;

@OpenAPIDefinition(
    tags = {
        @Tag(name = Constants.ENDPOINT_PHYSICIAN_TAG_NAME,
        description = Constants.ENDPOINT_PHYSICIAN_TAG__DESCRIPTION
        )
    },
    info = @Info(
        title = Constants.ENDPOINT_PHYSICIAN_INFO_TITLE,
        description = Constants.ENDPOINT_PHYSICIAN_INFO_DESCRIPTION,
        version = Constants.ENDPOINT_PHYSICIAN_INFO_VERSION,
        contact = @Contact(
            name = Constants.ENDPOINT_PHYSICIAN_INFO_CONTACT_NAME,
            url = Constants.ENDPOINT_PHYSICIAN_INFO_CONTACT_URL,
            email = Constants.ENDPOINT_PHYSICIAN_INFO_CONTACT_EMAIL
        ),
        license = @License(
            name = Constants.ENDPOINT_PHYSICIAN_INFO_LICENCE_NAME,
            url = Constants.ENDPOINT_PHYSICIAN_INFO_LICENCE_URL
        )
    )
)

public class SwaggerConfig extends Application{
}
