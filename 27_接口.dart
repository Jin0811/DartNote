/**
 * 接口在Dart当中就是一个类，只是用法不同
 * - 与Java不同，Java中的接口需要用interface关键字声明，Dart中不需要
 * - 接口可以是任意类，但是一般使用抽象类做接口
 *
 * 一个类可以实现（implements）多个接口，多个接口用逗号分隔
 * - class MyClass implements Interface1, Interface2 {}
 * - 接口可以看成一个个的小零件，类实现接口就相当于组装零件
 *
 * 普通类实现接口后，必须重写接口中所有的属性和方法
 */

abstract class Processor {
  late String cores; // 内核
  arch(String name); // 芯片制程
}

abstract class Camera {
  late String resolution; // 分辨率
  brand(String name); // 品牌
}

// 通过普通类实现接口
class Phone implements Processor, Camera {
  @override
  String cores;

  @override
  String resolution;

  // 构造函数
  Phone(this.cores, this.resolution);

  @override
  arch(String name) {
    print("芯片制程${name}");
  }

  @override
  brand(String name) {
    print("品牌${name}");
  }
}

void main() {
  Phone p = new Phone("4核", "3000000");
  p.arch("5nm");
  p.brand("徕卡");
}
