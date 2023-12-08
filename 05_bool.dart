/**
 * 布尔类型只有两个值，即true和false
 *
 * 对变量进行判断时，要显示地检查布尔值
 * if (varName) {...} // Bad
 * if (varName == 0) {...} // Good
 *
 * dart当中不存在===，因为dart当中变量的类型是确定了的
 */

void main() {
  // 声明布尔值
  bool flag1 = true;
  bool flag2 = false;
  print(flag1);
  print(flag2);

  // 显式地进行判断
  var flag3; // 默认值为null

  // 报错 type 'Null' is not a subtype of type 'bool'
  // if (flag3) {
  //   print("flag3为真");
  // } else {
  //   print("flag3为假");
  // }

  // 正常
  if (flag3 != null) {
    print("flag3为真");
  } else {
    print("flag3为假");
  }

  // 判断一个变量是否为非数字
  const n1 = 0 / 0;
  print(n1); // NaN
  print(n1.isNaN); // true
  print((-1).isNegative); // true 判断是否为负数
}
