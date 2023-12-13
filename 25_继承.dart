/**
 * Dart当中类的继承
 * 根据类的先后顺序，可以将类分为父类和子类，子类可以继承父类
 *
 * 子类通过extends关键字继承父类
 * - 继承之后，子类可以使用父类中，可见的内容（属性和方法）
 *
 * 子类中，可以通过@override元数据来标记覆写方法
 * - 覆写方法就是子类中与父类同名的方法
 *
 * 子类中，可以通过super关键字来引入父类中可见的内容
 * - 属性
 * - 方法（普通构造函数、命名构造函数）
 */

import "lib/Father.dart";
import "lib/Son.dart";

void main() {
  var f = new Father("皇帝");
  print(f.name);
  f.say();

  var s = new Son.origin("卖草鞋");
  print(s.name);
  s.say();
  // 报错 The getter '_money' isn't defined for the type 'Son'
  // _money是父类的私有属性，子类无法父类中的私有属性和方法
  // print(s._money);
  print(s.getMoney); // 借助getter来访问父类的私有属性
}
