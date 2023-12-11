/**
 * Dart函数-函数参数
 *
 * 必填参数
 * - 参数类型 参数名称
 *
 * 可选参数
 * - 放在必选参数后面
 * - 通过中括号包裹起来
 * - 可选参数可以设置默认值
 *
 * 命名参数
 * - 用大括号包裹起来
 * - 调用函数时，命名参数的名称与声明函数中的形参名称保持一致
 *
 * 函数参数
 * - 将一个函数作为参数传递给另外一个函数
 */

void main() {
  // 必填参数
  String info1(String name) {
    return "用户信息：${name}";
  }

  print(info1("张三")); // 用户信息：张三

  // 可选参数
  String info2(String name, [int age = 0, String gender = "男"]) {
    return "用户信息：${name}，年龄为${age}，性别为${gender}";
  }

  print(info2("张三", 18, "女")); // 用户信息：张三，年龄为18，性别为女

  // 命名参数
  String info3(String name, {int age = 0, String gender = "男"}) {
    return "用户信息：${name}，年龄为${age}，性别为${gender}";
  }

  print(info3("张三", age: 20, gender: "男")); // 用户信息：张三，年龄为20，性别为男

  // 函数参数，这里将myPrint函数作为参数传递给了forEach函数
  final myPrint = (value) {
    print(value);
  };
  List hobby = <String>["美食", "电影"];
  hobby.forEach(myPrint);
}
