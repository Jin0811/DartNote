/**
 * 常量构造函数
 * 如果类生成的对象不会改变，则可以通过常量构造函数使这些对象成为编译时常量
 *
 * 如果想要声明常量构造函数，则类里面的全部属性都要使用final声明
 * 常量构造函数必须通过const声明，并且不能拥有函数体
 */

class Point {
  num x;
  num y;

  // 默认构造函数
  Point(this.x, this.y);
}

class ImmutablePoint {
  // 属性必须通过final声明
  final num x;
  final num y;

  // 常量构造函数必须通过const声明
  // 常量构造函数不能拥有函数体
  const ImmutablePoint(this.x, this.y);
}

void main() {
  // 默认构造函数
  var p1 = new Point(1, 2);
  var p2 = new Point(1, 2);
  print(p1 == p2); // false

  // 常量构造函数可以当作普通构造函数使用，即通过new的方式去创建实例对象
  var p3 = new ImmutablePoint(1, 2);
  var p4 = new ImmutablePoint(1, 2);
  print(p3 == p4); // false

  // 声明不可变对象，必须通过const关键字，否则无效
  var p5 = const ImmutablePoint(1, 2);
  var p6 = const ImmutablePoint(1, 2);
  print(p5 == p6); // true
}
