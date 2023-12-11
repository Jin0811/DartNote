/**
 * 地板除 ~/
 * 类型判断运算符 is 和 is!
 * 避空运算符 ?? | ??=
 * 条件属性访问 ?.
 * 级联运算符 ..
 */

void main() {
  // 地板除 ~/
  // 即除法，返回整数结果，向下取整
  print(7 / 4); // 普通除法 1.75
  print(7 ~/ 4); // 地板除 1

  // 类型判断运算符 is 和 is!
  dynamic list = [];
  if (list is List) {
    print("list是数组");
  } else {
    print("list不是数组");
  }
  if (list is! List) {
    print("list不是数组");
  } else {
    print("list是数组");
  }

  // 避空运算符，分为两种，一种是用于判断，另外一种是用于赋值
  // ??
  print(null ?? 12); // 12
  var foo;
  print(foo ?? 0); // 0
  // ??=
  var test;
  test ??= 10; // 如果test未进行赋值，即test为null，则进行赋值；如果test不为null，则不会进行赋值
  print(test); // 10

  // 条件属性访问 ?.
  var testMap;
  // print(testMap.length); // 报错 The getter 'length' was called on null.
  print(testMap?.length); // 代码正常执行，输出null

  // 级联运算符 ..
  // 当我们需要对一个实例对象进行多个操作时，可以采用级联运算符，类似于链式调用
  // 级联运算符在某些情况下可以避免创建临时变量，使得代码更为流畅

  // 不使用级联运算符
  Set testSet1 = {4};
  testSet1.add(1);
  testSet1.add(2);
  testSet1.add(3);
  testSet1.remove(4);
  print(testSet1); // {1, 2, 3}

  // 使用级联运算符
  Set testSet2 = {4};
  testSet2
    ..add(1)
    ..add(2)
    ..add(3)
    ..remove(4);
  print(testSet2); // {1, 2, 3}
}
