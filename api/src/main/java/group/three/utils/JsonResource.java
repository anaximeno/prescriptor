package group.three.utils;

import java.util.HashMap;

public class JsonResource extends HashMap<String, Object> {
    private static final long serialVersionUID = 1L;

    public void set(String key, Object value) {
        this.put(key, value);
    }

    public void unset(String key) {
        this.remove(key);
    }

    public static JsonResourceBuilder builder() {
        return new JsonResourceBuilder();
    }

    public static JsonResource message(String message) {
        return JsonResource.builder().set("message", message).build();
    }

    public static JsonResource data(Object data) {
        return JsonResource.builder().set("data", data).build();
    }

    public static JsonResource messageWithData(String message, Object data) {
        return JsonResource.builder()
                .set("message", message)
                .set("data", data)
                .build();
    }
}