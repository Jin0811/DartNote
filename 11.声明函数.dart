/**
 * Dart函数-声明函数
 * 直接声明
 * - dart当中声明函数不需要function关键字
 *
 * 箭头函数
 * - 箭头函数中，函数体只能写一行，并且不能带有结束的分号
 * - dart当中的箭头函数只是函数的一种简写形式，不带有任何的副作用
 *
 * 匿名函数
 *
 * 立即执行函数
 */

void main() {
  // 声明函数
  void printInfo() {
    print("hello");
  }

  printInfo();

  // 约束返回值的类型，返回值需要与声明的类型一致
  int getNum() {
    return 1;
  }

  getNum();

  // 匿名函数
  final myPrint = (value) {
    print(value);
  };

  List hobby = <String>["美食", "电影"];
  hobby.forEach(myPrint);

  // 箭头函数
  hobby.forEach((item) => print(item));

  // 立即执行函数
  ((int n) {
    print(n);
  })(10);
}
