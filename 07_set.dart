/**
 * Set是一个无序的，元素唯一的集合
 * Set有字面量和构造函数两种声明方式（字面量使用大括号）
 * Set无法通过下标取值
 * Set可以取并集、交集等
 */

void main() {
  // 字面量
  var test1 = <int>{1, 2, 3, 4};
  print(test1); // {1, 2, 3, 4}

  // 构造函数
  var test2 = new Set();
  test2.add("张三");
  test2.add("李四");
  print(test2);

  // Set转为List
  print(test1.toList()); // [1, 2, 3, 4]

  // List转为Set
  // 转换时，重复的元素会被剔除
  List numbs = <int>[1, 2, 2, 3, 4, 4];
  print(numbs.toSet()); // {1, 2, 3, 4}

  // 集合的操作
  var tomHobby = new Set();
  tomHobby.addAll(["美食", "电影", "篮球"]);

  var jackHobby = new Set();
  jackHobby.addAll(["美食", "电影", "足球"]);

  print(tomHobby.intersection(jackHobby)); // 交集 {美食, 电影}
  print(tomHobby.union(jackHobby)); // 并集 {美食, 电影, 篮球, 足球}
  print(tomHobby.difference(jackHobby)); // 差集 {篮球}
  print(tomHobby.first); // 返回集合的第一个元素
  print(tomHobby.last); // 返回集合的最后一个元素
}
