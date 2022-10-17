import 'mashina.dart' as mashina;

void main(List<String> arguments) {
  final d1 = Dog('reks');
  print(d1.name);
  final d2 = Dog.dogTuz('alabai');
  print(d2.name);

  final f1 = mashina.Mashina.fromResponse(mashina.response["cars"][0]);
  print(f1.nomer);
}

class Dog {
  const Dog(this.name);

  final String name;

  factory Dog.dogTuz(String value) {
    return Dog(value);
  }
}
