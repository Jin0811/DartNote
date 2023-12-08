/**
 * dart当中一切都是对象，变量存储的是对象的引用
 *
 * dart当中变量的特性：
 * 值不会进行隐式转换
 * 默认值为null
 * 大小写敏感
 *
 * 常量就是值不可以改变的变量，一旦声明，值就无法更改
 * final和const都可以声明常量，但是存在一些区别
 * - final是运行期常量
 * - const是编译期常量，const的值只能是字面量
 */

void main() {
  // 使用var声明变量，var自动会进行类型推导，会根据值来推导其类型
  // 后续只能赋值为String类型
  var age = 18;

  // 使用具体的类型来定义变量，显式指定其类型
  // 后续只能赋值为String类型
  String name = "张三";

  // dynamic的意思是动态的、不断变化的
  // dynamic定义的变量，可以为其赋值任意类型
  dynamic d_var = 10;
  d_var = true;
  d_var = "123";
  d_var = {};
  d_var = null;

  // 变量的默认值为null
  // 使用var和dynamic定义变量时，可以先不进行赋值，此时这个变量的值就为null
  var default_val_1;
  dynamic default_val_2;
  print(default_val_1); // null
  print(default_val_2); // null

  // 常量在初始化时，必须提供一个值，并且不能再次被赋值
  const n1 = 1;
  final n2 = 1;

  // final定义的常量是运行时常量，而const常量则是编译时常量
  // 也就是说final定义常量时，其值可以是一个变量，而const定义的常量，其值必须是一个字面常量值
  // 下面通过一个例子来说明：
  // 时间戳在我们写代码，定义变量的时候，并不是一个确定的值，只有我们将程序运行起来，执行到这里的时候，才可以知道时间戳的值
  // 这样的值就是运行时的值，只能使用final来定义常量
  // 与之相对应的是固定的值，譬如1、2、3，这些值是固定的，可以final或者const来定义常量

  // const time = DateTime.now(); // 报错-无法将运行时的值分配给const变量
  final time2 = DateTime.now(); // 正常-可以将运行时的值分配给final变量
  const m1 = 1;
  final m2 = 1;
  print(time2);
}
