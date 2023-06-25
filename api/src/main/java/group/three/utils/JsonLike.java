package group.three.utils;

import java.util.HashMap;

public class JsonLike extends HashMap<String, Object> {
    private static final long serialVersionUID = 1L;

    public static JsonLikeBuilder builder() {
        return new JsonLikeBuilder();
    }

    public static JsonLike from(String key, Object obj) {
        return JsonLike.builder().add(key, obj).build();
    }

    public static JsonLike message(String message) {
        return JsonLike.from("message", message);
    }

    public static JsonLike data(Object data) {
        return JsonLike.from("data", data);
    }

    public static JsonLike messageWithData(String message, Object data) {
        return JsonLike.builder().add("message", message).add("data", data).build();
    }
}