/**
 * 元数据
 * 元数据以@开头，可以给代码标记一些额外的信息
 * 元数据可以用在库、类、构造器、函数、字段、参数或者变量声明的前面
 *
 * @override 重写
 * 某个方法添加此注解后，表示重写了父类中的同名方法
 *
 * @required 必填
 * 可以通过@required来注解Dart中的命名参数，标识参数为必填参数
 *
 * @deprecated 弃用
 * 如果某个类或者方法加上了此注解，则表示这个类或者方法不再建议使用
 *
 */

class Phone {
  // 这是旧版本的开机方法，会在将来的版本中移除
  @deprecated
  activate() {
    print("激活");
    this.turnOn();
  }

  turnOn() {
    print("开机");
  }
}

void main() {
  var p = new Phone();
  p.activate();
}
