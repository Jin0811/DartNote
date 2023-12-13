/**
 * 泛型类型限制，限制了泛型的范围
 */

class SomeBaseClass {}

class SomeBaseClassChild extends SomeBaseClass {}

class AnotherClass {}

class Foo<T extends SomeBaseClass> {
  String toString() {
    return "Instance of Foo<${T}>";
  }
}

void main() {
  var f1 = Foo<SomeBaseClass>();
  print(f1); // Instance of Foo<SomeBaseClassChild>

  // var f2 = Foo<AnotherClass>();
  // print(f2);

  var f3 = Foo<SomeBaseClassChild>();
  print(f3); // Instance of Foo<SomeBaseClassChild>

  var f4 = Foo();
  print(f4); // Instance of Foo<SomeBaseClass>
}
