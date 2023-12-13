/**
 * 抽象类是用abstract关键字修饰的类
 * 抽象类的作用是充当普通类的模板，约定一些必要的属性和方法
 *
 * 抽象方法是指没有方法体的方法
 * - 抽象类当中一般都有抽象方法，也可以没有抽象方法
 * - 普通类当中不能有抽象方法
 *
 * 抽象类不能被实例化，即不能被new
 *
 * 抽象类可以被普通类继承（extends）
 * - 如果普通类继承抽象类，则必须实现抽象类中所有的抽象方法
 *
 * 抽象类可以充当接口被实现
 * - 如果把抽象类当作接口实现的话，普通类必须实现抽象类中定义的所有属性和方法
 */

abstract class BasicPhone {
  // 声明抽象方法
  void processor(); // 处理器
  void camera(); // 摄像头

  // 抽象类中的普通方法
  void info() {
    print("我是抽象类中的一个普通方法");
  }
}

class Xiaomi extends BasicPhone {
  // 普通类当中不能有抽象方法
  // void test();

  // 普通类继承抽象类，则必须实现抽象类中所有的抽象方法
  @override
  void processor() {
    print("骁龙888");
  }

  @override
  void camera() {
    print("三星摄像头");
  }
}

class Huawei extends BasicPhone {
  // 普通类继承抽象类，则必须实现抽象类中所有的抽象方法
  @override
  void processor() {
    print("麒麟990");
  }

  @override
  void camera() {
    print("徕卡摄像头");
  }
}

void main() {
  // 抽象类不能被实例化
  // var basicPhone = new BasicPhone(); // Abstract classes can't be instantiated

  Xiaomi m = new Xiaomi();
  m.processor();
  m.camera();
  m.info();

  Huawei h = new Huawei();
  h.processor();
  h.camera();
  h.info();
}
