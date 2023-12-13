/**
 * 混入 Mixin
 *
 * 混入是一段公共代码，混入有两种声明方式：
 * - 1、将类作为混入 class MixinA {}
 *  - 作为混入的类不能继承除了Object以外的其他类
 *  - 作为混入的类不能有构造函数
 * - 2、使用mixin关键字声明 mixin MixinB {}
 *
 * 混入可以提高代码复用的效率，普通类可以通过with来使用混入
 * class MyClass with MixinA, MixinB {}
 *
 * 使用多个混入时，后引入的混入会覆盖之前混入中的重复的内容
 * MixinA和MixinB中都有test方法，MyClass会使用MixinB中的test方法
 */

// 将类作为混入
class MixinA {
  String name = "MixinA";

  void printA() {
    print("A");
  }

  void run() {
    print("A is running");
  }
}

// 使用mixin关键字声明
mixin MixinB {
  String name = "MixinB";

  void printB() {
    print("B");
  }

  void run() {
    print("B is running");
  }
}

// 使用多个混入
class MyClass with MixinA, MixinB {}

void main() {
  MyClass c = new MyClass();
  c.printA(); // A
  c.printB(); // B
  print(c.name); // MixinB 后面的混入覆盖前面的混入
  c.run();
}
