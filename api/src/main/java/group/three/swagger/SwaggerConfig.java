package group.three.swagger;

import org.eclipse.microprofile.openapi.annotations.OpenAPIDefinition;
import org.eclipse.microprofile.openapi.annotations.info.Contact;
import org.eclipse.microprofile.openapi.annotations.info.Info;
import org.eclipse.microprofile.openapi.annotations.info.License;
import org.eclipse.microprofile.openapi.annotations.tags.Tag;

import group.three.utils.Constants;
import jakarta.ws.rs.core.Application;

@OpenAPIDefinition(
    tags = {
        @Tag(name = Constants.SWAGGER_PHYSICIAN_TAG_NAME,
        description = Constants.SWAGGER_PHYSICIAN_TAG__DESCRIPTION
        )
    },
    info = @Info(
        title = Constants.SWAGGER_PHYSICIAN_INFO_TITLE,
        description = Constants.SWAGGER_PHYSICIAN_INFO_DESCRIPTION,
        version = Constants.SWAGGER_PHYSICIAN_INFO_VERSION,
        contact = @Contact(
            name = Constants.SWAGGER_PHYSICIAN_INFO_CONTACT_NAME,
            url = Constants.SWAGGER_PHYSICIAN_INFO_CONTACT_URL,
            email = Constants.SWAGGER_PHYSICIAN_INFO_CONTACT_EMAIL
        ),
        license = @License(
            name = Constants.SWAGGER_PHYSICIAN_INFO_LICENCE_NAME,
            url = Constants.SWAGGER_PHYSICIAN_INFO_LICENCE_URL
        )
    )
)

public class SwaggerConfig extends Application{
}
