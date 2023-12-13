import "Father.dart";

class Son extends Father {
  // 子类中的同名属性会覆盖父类的属性
  String name = "刘禅";

  // 通过super继承父类的普通构造函数
  // Son(String job) : super(job);

  // 通过普通构造函数继承命名构造函数
  // Son(String job) : super.origin(job);

  // 通过命名构造函数来继承父类的命名构造函数
  Son.origin(String job) : super.origin(job);

  // 覆写
  @override
  say() {
    // super指代父类，可以通过super来调用父类中的属性和方法
    super.say();
    print("Son为${this.name}，Father为${super.name}，Father的工作${super.job}");
  }
}
