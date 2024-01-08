/**
 * 命名构造函数
 * 在类中使用命名构造器（类名.函数名）实现多个构造器，可以提供额外的清晰度
 * 不同的构造器有着不同的作用，通过不同的构造器创建的对象，职责更为清晰
 */

class Point {
  late num x;
  late num y;

  // 默认构造函数
  Point(this.x, this.y);

  // 第一个命名构造函数
  Point.origin() {
    this.x = 0;
    this.y = 0;
  }

  // 第二个命名构造函数
  Point.fromJson({x: 0, y: 0}) {
    this.x = x;
    this.y = y;
  }
}

void main() {
  // 默认坐标
  Point p1 = new Point.origin();
  // 手动设置坐标
  Point p2 = new Point.fromJson(x: 10, y: 20);
  print(p1.x);
  print(p2.y);
}
