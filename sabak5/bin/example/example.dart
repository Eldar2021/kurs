class Atasy extends Adam {
  // property
  String aty;
  int jashy;
  Function() ishi;
  List kesipteri;

  Atasy({
    required this.aty,
    required this.jashy,
    required this.ishi,
    required this.kesipteri,
  }) : super(aty: aty, jashy: jashy);

  @override
  void uktoo() {
    print('men $aty 10 saat uktaym');
  }
}

class Apasy extends Adam {
  // property

  Function() ishi;
  Apasy({
    required super.aty,
    required super.jashy,
    required this.ishi,
  });
}

class Balasy extends Adam {
  Function() iylaym;

  Balasy({
    required super.aty,
    required super.jashy,
    required this.iylaym,
  });

  @override
  void uktoo() {
    print('men $aty 14 saat uktaym');
  }
}

class Adam {
  // property
  String aty;
  int jashy;
  Adam({
    required this.aty,
    required this.jashy,
  });

  // method
  void uktoo() {
    print('men $aty 8 saat uktaym');
  }
}

void main(List<String> args) {
  Atasy atasy = Atasy(
    aty: 'Manas',
    jashy: 25,
    ishi: () {
      print('eldi korgoym');
    },
    kesipteri: ['Prokuror', 'Baatyr', 'Xan', 'Prommist'],
  );
  Apasy apasy = Apasy(
    aty: 'Kanykey',
    jashy: 20,
    ishi: () {
      print('Enelik jumushumdu atkaram');
    },
  );
  Balasy balasy = Balasy(
    aty: 'Semetey',
    jashy: 2,
    iylaym: () {
      print('inaa--inaa');
    },
  );

  atasy.uktoo();
  atasy.ishi();
  print(atasy.kesipteri);
  apasy.uktoo();
  apasy.ishi();
  balasy.uktoo();
  balasy.iylaym();
}
