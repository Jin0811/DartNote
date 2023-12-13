/**
 * 泛型类
 */

// 普通类
class CommonClass {
  Set s = new Set<int>();

  void add(int value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

// 泛型类
class GenericClass<T> {
  Set s = new Set<T>();

  void add(T value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

void main() {
  // 普通类
  CommonClass c = new CommonClass();
  c.add(1);
  c.add(2);
  c.info();

  // 允许添加int的类
  GenericClass g1 = new GenericClass<int>();
  g1.add(1);
  g1.add(2);
  g1.info();

  // 允许添加String的类
  GenericClass g2 = new GenericClass<String>();
  g2.add("1");
  g2.add("2");
  g2.info();

  // 默认的类型为dynamic
  Set s1 = new Set(); // 可以添加任意类型的数据
  Set s2 = new Set<int>(); // 只能添加int类型
  Set s3 = new Set<String>(); // 只能添加String类型

  // 字面量形式
  Set s4 = {};
  Set s5 = <int>{};
  Set s6 = <String>{};
}
