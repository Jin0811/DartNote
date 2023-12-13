class Father {
  String name = "刘备";
  num _money = 10000;
  String job;

  say() {
    print("Father为${this.name}");
  }

  // _money是一个私有属性，子类是无法访问的，我们可以采用其他的方式来让子类可以访问
  get getMoney {
    return this._money;
  }

  // 普通构造函数
  Father(this.job);

  // 命名构造函数
  Father.origin(this.job);
}
