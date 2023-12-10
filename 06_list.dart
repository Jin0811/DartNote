/**
 * dart当中的数组，由List对象表示，List两种声明方式
 * - 字面量方式
 *  List list1 = []; // 不限制元素的数据类型
 *  List list2 = <int>[] // 限制数组中的元素必须为int
 * - 构造函数方式，new可以省略
 *  List list3 = new List.empty(growable: true); // 不限制长度的空列表
 *  List list4 = new List.filled(3, 0); // 声明指定长度的填充列表
 *
 * List可以使用扩展操作符，即...
 * var list1 = [1, 2, 3];
 * var list = [...list1, 4];
 *
 * 数组的遍历
 * for 普通遍历，遍历的是下标
 * for...in...遍历的是元素
 * forEach 遍历列表
 * map 遍历并处理元素，生成新的列表
 * where 返回满足条件的数据
 * any 只要有一项满足条件，就返回true
 * every 每一项都满足条件，才返回true
 */

void main() {
  // 字面量方式
  List list1 = [1, "1", true, null];
  List list2 = <int>[1, 2, 3];
  print(list1);
  print(list2);

  // 构造函数方式
  // growable表示数组是否可以扩展，为true时，可以往数组中添加元素
  List list3 = List.empty(growable: true); // [] 不限制长度的空列表
  List list4 = List.filled(3, "填充"); // ['填充,' 填充, 填充] 声明指定长度和指定内容的填充列表
  print(list3);
  print(list4);

  // 使用构造函数
  var list5 = [1, 2, 3];
  var list6 = [...list5, 4];
  print(list6);

  // 数组的常用方法
  List list7 = <int>[1, 2, 3];
  print(list7.length); // 数组长度
  print(list7.reversed.toList()); // 数组反转，反转之后，并不是一个数组，还需要调用toList方法进行转换
  list7.add(4); // 添加元素
  list7.addAll(<int>[5, 6]); // 批量添加元素
  print(list7); // [1, 2, 3, 4, 5, 6]

  list7.remove(6); // 根据元素值删除元素
  list7.removeAt(4); // 根据下标删除元素
  print(list7); // [1, 2, 3, 4]

  list7.insert(4, 5); // 在指定下标位置插入元素
  print(list7); // [1, 2, 3, 4, 5]

  list7.clear(); // 清空元素
  print(list7); // []

  // 数组元素合并
  print([1, 2, 3].join("/")); // 1/2/3

  // 数组扁平化
  List list8 = [
    [1, 2],
    [3, 4]
  ];
  print(list8.expand((e) => e).toList()); // [1, 2, 3, 4]

  // 数组折叠，类似于js当中的reduce方法
  List list9 = <int>[1, 2, 3, 4];
  num result = list9.fold(2, (p, element) => p + element);
  print(result); // 10

  // 数组遍历
  List tempList = <int>[1, 2, 3, 4, 5];
  // for 普通遍历，遍历的是下标
  for (int i = 0; i < tempList.length; i++) {
    print("for ${tempList[i]}");
  }

  // for...in...遍历的是元素
  for (var item in tempList) {
    print("for...in ${item}");
  }

  // forEach 遍历列表
  tempList.forEach((element) {
    print("forEach ${element}");
  });

  // map 遍历并处理元素，生成新的列表
  var newList = tempList.map((e) => e * 2);
  print(newList);

  // where 返回满足条件的数据
  print(tempList.where((e) => e > 3));

  // any 只要有一项满足条件，就返回true
  print(tempList.any((e) => e > 3)); // true

  // every 每一项都满足条件，才返回true
  print(tempList.every((e) => e > 3)); // false
}
