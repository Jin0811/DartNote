/**
 * Dart其他数据类型
 *
 * Runes 符文
 * Runes对象是一个32位字符对象，可以把文字转换为符号表情或特定的文字
 * 字符网站 https://copychar.cc/
 *
 * Symbol
 * 在dart当中是一个用#开头来表示的标识符，Symbol在dart当中是映射
 *
 * dynamic
 * 动态数据类型，使用dynamic定义的变量类型不固定
 */

void main() {
  print("\u{1f44d}"); // 👍

  String icon = "👍";
  print(icon.length); // 这里的长度为2，因为dart当中使用utf-16来表示字符，而字体图标是utf-32的
  print(icon.runes.length); // 这里的长度为1，因为Runes是utf-32的

  // Runes可以将utf-32字符集表示的内容转换为符号
  // 构造Runes时，如果utf-32的编码长度为4，则可以省略大括号，如果大于4位，则必须写大括号
  Runes test = new Runes("\u{1f680}");
  print(new String.fromCharCodes(test)); // 🚀

  // Symbol
  var symbolTest1 = #abc;
  var symbolTest2 = new Symbol("abc");
  print(symbolTest1); // Symbol("abc")
  print(symbolTest2); // Symbol("abc")
  print(symbolTest1 == symbolTest2); // true

  // 动态数据类型
  dynamic test1 = 1;
  test1 = true;
  test1 = "111";
  print(test1);
}
