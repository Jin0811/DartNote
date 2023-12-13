/**
 * Getter 获取器，是通过get关键字修饰的方法
 * - 这个方法没有小括号，访问时也没有小括号，像访问属性一样访问方法
 *
 * Setter 修改器，是通过set关键字修饰的方法
 * - 访问时，像设置属性一样给函数传参
 */

class Circle {
  final double PI = 3.1415926;
  num r;

  Circle(this.r);

  num area() {
    return this.PI * this.r * this.r;
  }

  // Getter 使用get声明的方法，不能有小括号
  num get areaByGet {
    return this.PI * this.r * this.r;
  }

  // Setter
  set setR(value) {
    this.r = value;
  }
}

void main() {
  var c = new Circle(10);

  // 通过方法来获取面积
  print(c.area());

  // 通过Getter的形式获取面积
  print(c.areaByGet);

  // 通过Setter的形式来设置面积
  // 像设置属性一样给函数传参
  c.setR = 20;
}
