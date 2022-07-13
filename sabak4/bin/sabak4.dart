void main(List<String> arguments) {
  // String str = 'String';
  // int integer = 12;

  Olko kg = Olko(
      kalky: 6000000, ayanty: 923764835, name: 'Кыргызстан', egemenduubu: true, til: 'Кыргызча');

  print(kg.ayanty);
  print(kg.kalky);
  print(kg.name);
  print(kg.egemenduubu);
  print(kg.til);

  Text text1 = Text(text: 'Kurs8');

  // birFuncnsia('Aydar', 24, 'Tokmok');

  // birFuncnsia1(
  //   name: 'Mayrambek',
  //   jeri: 'Karakol',
  //   jash: 23,
  // );
}

// void birFuncnsia(String name, [int? jash, String? jeri]) {
//   print('$name $jash $jeri');
// }

// void birFuncnsia1({required String name, int? jash, String? jeri}) {
//   print('$name $jash $jeri');
// }

// class achkych soz => classtyn aty => classtyn denesi {}

class Text {
  String text;
  Text({required this.text});
}

class Olko {
  int kalky;
  double ayanty;
  String? til;
  String name;
  bool egemenduubu;

  Olko({
    required this.kalky,
    required this.ayanty,
    this.til,
    required this.name,
    required this.egemenduubu,
  });

  // Olko({
  //   required this.kalky,
  //   required this.ayanty,
  //   this.til,
  //   required this.name,
  //   required this.egemenduubu,
  // });
}
