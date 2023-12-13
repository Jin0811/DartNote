/**
 * 系统库也称为核心库，是Dart提供的常用内置库，不需要单独下载，引入即可使用
 *
 * import "dart:core"; core库比较特殊，会默认引入，无需手动引入
 */

void main() {
  // 创建当前时间
  var now = new DateTime.now();
  print(now); // 2023-12-13 21:57:42.001058

  // 通过普通构造函数创建时间
  var d1 = new DateTime(2023, 12, 13, 21, 58, 00);
  print(d1); // 2023-12-13 21:58:00.000

  // 创建标准时间
  var d2 = DateTime.parse("2021-01-20 12:30:20");
  print(d2);

  // 时间增量
  print(now.add(new Duration(hours: 2)));
  print(now.add(new Duration(hours: -2)));

  // 时间比较
  print(d1.isBefore(d2)); // 之前
  print(d1.isAfter(d2)); // 之后
  print(d1.isAtSameMomentAs(d2)); // 是否相同

  // 时间差
  final difference = d1.difference(d2);
  print([difference.inDays, difference.inHours]); // 相差的天数和相差的小时

  // 格式化
  String year = now.year.toString();
  String month = now.month.toString().padLeft(2, "0");
  String day = now.day.toString().padLeft(2, "0");
  String timeStr = "${year}-${month}-${day}";
  print(timeStr);
}
