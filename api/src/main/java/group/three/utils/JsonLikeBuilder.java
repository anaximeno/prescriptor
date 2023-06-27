package group.three.utils;

public class JsonLikeBuilder {
    private JsonLike data;

    public JsonLikeBuilder() {
        this.data = new JsonLike();
    }

    private JsonLikeBuilder(JsonLike data) {
        this.data = data;
    }

    public static JsonLikeBuilder from(JsonLike data) {
        return new JsonLikeBuilder(data);
    }

    public JsonLikeBuilder set(String key, Object value) {
        this.data.put(key, value);
        return this;
    }

    public JsonLikeBuilder unset(String key) {
        this.data.remove(key);
        return this;
    }

    public JsonLike build() {
        return this.data;
    }
}