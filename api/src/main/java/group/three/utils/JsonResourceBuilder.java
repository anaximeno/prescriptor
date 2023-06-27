package group.three.utils;

public class JsonResourceBuilder {
    private JsonResource data;

    public JsonResourceBuilder() {
        this.data = new JsonResource();
    }

    private JsonResourceBuilder(JsonResource data) {
        this.data = data;
    }

    public static JsonResourceBuilder from(JsonResource data) {
        return new JsonResourceBuilder(data);
    }

    public JsonResourceBuilder set(String key, Object value) {
        this.data.put(key, value);
        return this;
    }

    public JsonResourceBuilder unset(String key) {
        this.data.remove(key);
        return this;
    }

    public JsonResource build() {
        return this.data;
    }
}