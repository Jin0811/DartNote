/**
 * 默认构造函数
 * 与类同名的函数，在实例化时，自动被调用
 */

class Point {
  num x;
  num y;

  // 简写形式，会自动为x和y进行赋值
  // Point(this.x, this.y);

  // 这里的Point方法就是默认构造函数，是一个方法，在实例化时，会自动调用
  Point(num x, num y) {
    print("Point 我是默认构造函数，实例化时，会第一个调用");
    this.x = x;
    this.y = y;
  }
}

void main() {
  Point p = new Point(10, 20);
  print(p.x);
}
