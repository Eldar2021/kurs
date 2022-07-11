void main(List<String> args) {
  Olko kg = Olko(
    name: 'Кыргызстан',
    ayanty: 83872364,
    til: Til(
      name: 'Кыргызча',
      tamgaSany: 36,
      tangalar: ['a', 'b'],
      sozdor: ['men', 'sen'],
    ),
    kalky: 6000000,
    shaarlar: ['Bishkek', 'Osh'],
    egemenduubu: true,
  );
  // kg.kalky = 6000000;
  // kg.ayanty = 86152376125;
  // kg.egemenduubu = true;
  // kg.name = 'Кыргызстан';
  print(kg.kalky);
  print(kg.ayanty);
  print(kg.egemenduubu);
  print(kg.name);
  print(kg.til.name);
  print(kg.til.tangalar);
}

/// class = ObJect

String a = 'a';

class Olko {
  String name;
  double ayanty;
  Til til;
  int kalky;
  List shaarlar;
  bool egemenduubu;
  Olko({
    required this.name,
    required this.ayanty,
    required this.til,
    required this.kalky,
    required this.shaarlar,
    required this.egemenduubu,
  });
}

class Til {
  String name;
  int tamgaSany;
  List tangalar;
  List sozdor;
  Til({
    required this.name,
    required this.tamgaSany,
    required this.tangalar,
    required this.sozdor,
  });
}
