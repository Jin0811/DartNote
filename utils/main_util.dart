// 主库
library main_util;

// 与分库建立联系
part './sub1.dart';

part './sub2.dart';

void func_in_main_util() {
  print("func_in_main_util");
}
