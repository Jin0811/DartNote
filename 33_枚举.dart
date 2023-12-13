/**
 * 枚举是数量固定的常量值，通过enum关键字声明
 * - 枚举的values常量可以获取到所有枚举值列表
 * - 可以通过index获取值的索引
 */

enum Color { red, green, blue }

void main() {
  // 可以通过index获取值的索引
  print(Color.green.index); // 1

  // 通过values可以获取到所有枚举值列表
  List<Color> colorList = Color.values;
  print(colorList); // [Color.red, Color.green, Color.blue]
  print(colorList[0]);
  print(colorList[1]);
  print(colorList[2]);
}
