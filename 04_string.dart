/**
 * 单引号和双引号都可以包裹字符串
 * 三个引号可以声明多行字符串，三个单引号和三个双引号都可以
 *
 * dart当中字符串还有一个作用是声明正则表达式
 * RegExp(r'正则表达式')
 */

void main() {
  // 单行文本和多行文本
  String str1 = '111';
  String str2 = "222";
  String str3 = '''
    多行文本1
    多行文本2
    多行文本3
  ''';

  // 字符串常用操作
  print(str1 + str2);
  print("${str1}${str2}");
  print(str1.split(""));
  print("  111    ".trim()); // trim | trimLeft | trimRight
  print(str1.isEmpty); // false 判断是否为空
  print(str1.isNotEmpty); // true 判断是否不为空

  // 字符串替换
  final replaceLetter = RegExp(r'[a-zA-z]');
  print("1a2a3a".replaceAll("a", ""));
  print("1a2a3a".replaceAll(replaceLetter, ""));

  // 正则表达式
  final isPhone = RegExp(r'^1\d{10}$');
  print(isPhone.hasMatch("111222333")); // false
  print(isPhone.hasMatch("13512341234")); // true

  // 判断字符串是否包含
  print("123".contains("1")); // true

  // 获取下标
  print("张三是一个公交司机".indexOf('是')); // 2
}
