void main() {
  // final y1 = StaticClass._();
  // final y2 = StaticClass();

  // print(y1.abs);
  print(StaticClass.abs);
  print(StaticClass.bsa);

  print('Singleton');

  print(StaticClass.bsa);

  final x1 = StaticClassEmes();
  final x2 = StaticClassEmes();
  // print(x1.abs);

  // print(x2.bsa);

  print('Is Not Singleton');

  print(x1 == x2);
}

class StaticClass {
  StaticClass._();

  static const String abs = 'cihuwehq';
  static const String bsa = 'qbdkqbdw';
}

class StaticClassEmes {
  final String abs = 'wkenfoe';
  final String bsa = 'qbdkqbdw';
}
