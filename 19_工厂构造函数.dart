/**
 * 工厂构造函数
 * 通过factory声明，工厂函数不会自动生成实例，而是通过代码来决定返回的实例
 *
 * 通过工厂构造函数可以实现单例模式
 * 在工厂构造函数当中，我们判断instance是否存在，如果不存在，则进行实例化
 * 如果存在，则返回instance，这样无论调用多少次new，只会实例化一次，可以减少内存消耗
 *
 */

class Person {
  String name;

  // 静态内容
  static late Person instance;

  // 工厂构造函数
  // 不能使用this关键字
  // 不能进行实例化操作
  factory Person([String name = "张三"]) {
    if (Person.instance == null) {
      // 第一次实例化
      Person.instance = new Person.newSelf(name);
    }
    // 非第一次实例化
    return Person.instance;
  }

  // 命名构造函数
  Person.newSelf(this.name);
}

void main() {
  // 实例化操作
  Person p1 = new Person("李四");
  print(p1.name);

  Person p2 = new Person("王五");
  print(p2.name);

  print(p1 == p2); // true
}
