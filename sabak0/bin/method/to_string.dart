void main() {
  int a = 3;
  double b = 2;

  SomeClass class1 = SomeClass();

  print(a);
  // 3
  print(a.toString());
  // a || 3

  print(b);
  // 2
  print(b.toString());
  // b

  print(class1);
  print(class1.toString());
}

class SomeClass {
  @override
  String toString() {
    return '3';
  }
}
