package group.three.utils;

public class JsonLikeBuilder {
        private JsonLike data = new JsonLike();

        public JsonLikeBuilder add(String key, Object object) {
            this.data.put(key, object);
            return this;
        }

        public JsonLike build() {
            return this.data;
        }
    }