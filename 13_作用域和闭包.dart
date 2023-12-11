/**
 * Dart函数-闭包
 * Dart中闭包的实现方式与JS中完全一致
 * 使用时机：既需要重用变量，又需要保护变量不被污染
 * 实现原理：
 * 外层函数被调用后，外层函数的作用域对象（AO）被内层函数引用着，导致外层函数的作用域对象无法释放，从而形成闭包
 *
 * Dart函数-作用域
 * 可以在函数作用域中访问全局变量，不能在全局作用域中，访问局部变量
 */

int globalNum = 100; // 全部变量

void main() {
  // 作用域
  void printInfo1() {
    var localNum = 200; // 局部变量
    print(globalNum);
    print(localNum);
  }

  printInfo1();

  // 闭包
  // 重用变量-money变量被内存函数所引用，所以不会消失，可以进行重用
  // 保护变量-money变量不能在外部访问和修改，也就是被保护了
  parent() {
    num money = 1000;
    return () {
      money = money - 100;
      print(money);
    };
  }

  final p = parent();
  p(); // 900
  p(); // 800
  p(); // 700
}
