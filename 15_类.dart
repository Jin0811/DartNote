/**
 * 类是通过class声明的代码段，包含属性和方法
 * - 属性：用来描述类的变量
 * - 方法：类中的函数称为类的方法
 *
 * 对象是类的实例化结果
 *
 * Dart当中一切皆为对象
 *
 * 常见的编程方式：
 * - 面对对象编程 OOP
 * - 面对过程编程 POP
 */

// 声明类
class Person {
  // 类的属性
  String name = "张三";

  // 类的方法
  void getInfo() {
    print("我是${this.name}");
  }
}

void main() {
  // 实例化类，得到一个实例对象
  Person p = new Person();
  print(p.name); // 访问类的属性
  p.getInfo(); // 调用类的方法
}
