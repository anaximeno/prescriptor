package group.three.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;


@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@Getter
@Setter
@ToString
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Status {
    @Builder.Default
    private int code = 0;
    @Builder.Default
    private String message = "";
    @Builder.Default
    private boolean error = false;
}
