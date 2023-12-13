import '15_类.dart';

/**
 * 访问修饰
 * Dart当中没有访问修饰符
 * Dart类当中，默认的访问修饰符是公共的，即public
 * 如果属性或方法以_（下划线）开头，即表示私有，即private
 *
 * 注意：
 * - 只有把类单独抽离出去，私有属性和方法才起作用
 * - 如果类和main函数在同一作用域，则私有属性不起作用
 */

// class Person {
//   String name; // 声明公共属性
//   num _money = 100; // 声明私有属性
//   Person(this.name);
// }

import "lib/PersonDemo.dart";

void main() {
  var p = new PersonDemo("张三");

  // 访问公共属性
  print(p.name);

  // 访问私有属性，报错 The getter '_money' isn't defined for the type 'PersonDemo'
  // print(p._money);
}
