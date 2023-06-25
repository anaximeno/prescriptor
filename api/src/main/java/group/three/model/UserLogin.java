package group.three.model;

import lombok.*;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Builder
@ToString
@Getter
@Setter
public class UserLogin {
    private String username;
    private String password;
}
