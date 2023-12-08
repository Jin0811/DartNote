/**
 * dart当中的数字由三个关键字描述
 * num 数字类型，既可以是整数，也可以是小数
 *  int 整数，必须是整数
 *  double 浮点数，既可以是整数，也可以是小数
 *
 */

void main() {
  // 声明整数
  int count = 3;
  print(count);

  // 声明浮点数
  double price1 = 3;
  double price2 = 3.2;
  print(price1); // 3.0
  print(price2); // 3.2

  // 声明数值类型
  num n1 = 3;
  print(n1);

  // 类型转换
  // dart不会进行隐式转换，我们可以调用方法去手动转换
  print(n1.toString());
  print(3.8.toString());
  print(n1.toInt()); // 向下取整

  print(3.1415926.round()); // 四舍五入
  print(3.3415926.toStringAsFixed(3)); // 3.342 转换为字符并保留指定小数位数

  print(10.remainder(3)); // 1 返回余数

  // 数字比较
  // 0相同 | 1大于 | -1小于
  print(10.compareTo(12)); // 10<12 所以返回-1

  print(12.gcd(18)); // 6 最大公约数
}
