/**
 * Map是一个无序的键值对（key-value）映射，通常被称作哈希或者字典
 * Map有字面量和构造函数两种声明方式
 */

void main() {
  // 字面量
  var person1 = {"name": "张三", "age": 20};
  print(person1);

  // 构造函数
  var person2 = new Map();
  person2["name"] = "李四";
  person2["age"] = 22;
  print(person2);

  print(person1["name"]); // 访问属性
  print(person1.containsKey("name")); // 判断map当中是否存在指定的key
  print(person1.containsValue(100)); // 判断map当中是否存在指定的value

  // 赋值
  // 如果key不存在，才进行赋值，如果key不存在，则不进行赋值
  person1.putIfAbsent("gender", () => "男");
  person1.putIfAbsent("gender", () => "女");
  print(person1["gender"]); // 这里打印的是男，因为第一次不在key，会进行赋值，第二次key已经存在，则不再进行赋值

  // 获取map中的全部key
  print(person1.keys); // (name, age, gender)
  // 获取map中的全部value
  print(person1.values); // (张三, 20, 男)

  // 删除key
  person1.remove("gender");
  person1.removeWhere((key, value) => key == "age"); // 根据条件删除key
  print(person1); // {name: 张三}
}
