/**
 * 泛型接口
 */

abstract class ObjectCache {
  getByKey(String key);

  void setByKey(String key, Object value);
}

abstract class StringCache {
  getByKey(String key);

  void setByKey(String key, String value);
}

abstract class Cache<T> {
  getByKey(String key);

  void setByKey(String key, T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("文件缓存: key=${key} | value=${value}");
  }
}

void main() {
  FileCache fc1 = new FileCache<String>();
  fc1.setByKey("foo", "bar");

  FileCache fc2 = new FileCache<Map>();
  fc2.setByKey("foo", {"id": 1, "name": "张三"});
}
