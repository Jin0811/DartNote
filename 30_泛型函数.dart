/**
 * 泛型函数
 */

// 只支持String
// String getData(String value) {
//   return value;
// }
// 只支持int
// int getData(int value) {
//   return value;
// }

// 支持多个类型，同时约束参数类型和返回类型
T getData<T>(T value) {
  return value;
}

// 只约束参数类型，不约束返回类型
getData2<T>(T value) {
  return value;
}

void main() {
  print(getData<String>("字符串"));
  print(getData<int>(111));
  print(getData<bool>(true));
}
