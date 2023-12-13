import '15_类.dart';

/**
 * static关键字用于指定静态成员
 * - 通过static修饰的属性是静态属性
 * - 通过static修饰的方法是静态方法
 *
 * 静态成员可以通过类名称直接访问，不需要实例化
 * - 实例化是比较消耗资源的，声明静态成员可以提供程序性能
 *
 * 静态方法不能访问非静态成员，非静态方法可以访问静态成员
 * - 静态方法当中不能使用this关键字，不能使用this来访问静态属性
 */

class Person {
  static String name = "张三"; // 静态属性
  int age = 18; // 非静态属性

  static void printInfo() {
    // 静态方法当中不能使用this关键字，不能使用this来访问静态属性
    // 报错 The static getter 'name' can't be accessed through an instance
    // print(this.name);

    // 静态方法当中访问静态属性
    print(name); // 张三

    // 静态方法当中，不能访问非静态属性
    // print(age); // 报错 Instance members can't be accessed from a static method

    // 静态方法不能访问非静态方法
    // test();

    print("静态方法");
  }

  void test() {
    // 非静态方法当中，可以访问静态属性和非静态属性
    print(name);
    print(this.age);

    // 非静态方法可以访问静态方法
    printInfo();
  }
}

void main() {
  // 静态成员可以通过类名称直接访问，不需要实例化
  print(Person.name);
  Person.printInfo();

  var p = new Person();
  print(p.age);
  // print(p.name); // 不能通过实例对象，访问静态属性
}
