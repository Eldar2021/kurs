import 'developer.dart';

// super method algan parametrlerdy atasyna otkorup beret

class BackDevelper extends Developer {
  String name;
  int jash;
  String framework;

  BackDevelper({
    required this.name,
    required this.jash,
    required this.framework,
  }) : super(name: name, jash: jash, framework: framework);
}

class BackDeveloper1 extends Developer {
  BackDeveloper1({
    required super.name,
    required super.jash,
    required super.framework,
  });
}
