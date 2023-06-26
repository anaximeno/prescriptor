package group.three.request;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@ToString
@Getter
@Setter
public class UserLoginRequest {
    private String username;
    private String password;
}
