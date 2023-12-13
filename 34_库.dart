/**
 * Dart当中的库就是具有特定功能的模块
 * - 可能包括单个文件，也可能包含多个文件
 *
 * 每个dart文件默认都是一个库，只是没有使用library来显式声明
 * Dart使用_（下划线）开头的标识符，表示库内可见，即私有
 * library关键字声明的库名称建议使用小写字母+下划线
 *
 * 按照库的作者进行划分，库可以分为三类：
 * - 自定义库（工程师自己写的）
 * - 系统库（Dart中自带的）
 * - 第三方库（Dart生态中的）
 *
 * Dart生态
 * 第三方库网站：https://pub.dev
 * pub命令：flutter目录/bin/cache/dart-sdk/bin
 *
 * 不同类型的库，引入方式不同
 * - 自定义库 import "库的位置/库名称.dart";
 * - 系统库 import "dart:库名称";
 * - 第三方库 import "package:XXX/XXX/XXX.dart";
 *
 * 引入库的一部分，仅进入需要的内容
 * 包含引入 show
 * 排除引入 hide
 *
 * 引入冲突处理
 * 当我们引入多个库的时候，难免会出现库当中的变量、函数、类名冲突的情况
 * 遇到此类情况时，可以使用as关键字给库设置一个别名，通过别名来访问库当中的元素
 *
 * 延迟加载，即懒加载
 * 使用deferred as关键字来标识需要延时加载的库
 */

// 引入自定义库
import "lib/MyCustom.dart";
import "lib/common.dart" show f1, f3; // 仅引入f1和f3
import "lib/common.dart" hide f2; // 排除f2，其他的都引入

// 引入系统库
import "dart:core"; // core库是Dart的基础库，比较特殊，是默认引入的，无论是否引入，都可以使用
import "dart:math";

// 延迟加载，即懒加载
import "lib/function.dart" deferred as func;

void main() {
  // 使用自定义库
  MyCustom mc = new MyCustom();
  mc.info();
  print(MyCustom.version);

  // 使用系统库
  print(min(10, 11.1));

  // 延迟加载
  greet();
}

Future greet() async {
  await func.loadLibrary(); // 先异步加载库，再进行调用
  func.hello();
}
