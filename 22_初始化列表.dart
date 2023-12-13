import 'dart:math';

/**
 * 初始化列表
 * 作用：用于在构造函数中设置属性的默认值
 * 时机：在构造函数执行之前执行
 * 语法：使用逗号分割初始化表达式
 * 场景：常用于设置final常量的值
 */

class Rect {
  int width;
  int height;

// 两个参数都是必填的
// Rect(this.width, this.height);

// 两个参数都为可选，且有默认值
// Rect([int width = 2, int height = 10]) {
//   this.width = width;
//   this.height = height;
// }

// 命名参数，两个参数都为可选
// Rect({int width = 2, int height = 10}) {
//   this.width = width;
//   this.height = height;
// }

  // 初始化列表
  Rect()
      : width = 4,
        height = 20 {}
}

class Point {
  double x, y, z;

  Point(this.x, this.y, this.z);

  // 初始化列表的特殊用法，重定向构造函数
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main() {
  var r = new Rect();
  print("${r.width}-${r.height}");

  var p = new Point.twoD(10, 20);
  print("${p.x} / ${p.y} / ${p.z}");
}
