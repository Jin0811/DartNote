class PersonDemo {
  String name; // 声明公开属性

  num _money = 100; // 声明私有属性

  PersonDemo(this.name);

  // 定义一个公共方法，在公共方法里面可以访问私有属性
  num getMoney() {
    return this._money;
  }

  // 定义一个私有方法
  void _privateFunc() {
    print("我是一个私有方法，只能在类内部使用");
  }
}
