class Koy extends UyJandyk {
  @override
  void unChygar() {
    print('maa--maa--maa-maa');
  }
}

class BodoMal extends UyJandyk {
  @override
  void unChygar() {
    print('moo-moo');
  }
}

class UyJandyk {
  void unChygar() {
    print('un chygardym');
  }
}

void main(List<String> args) {
  // Koy k1 = Koy();
  BodoMal uy = BodoMal();

  uy.unChygar();

  // UyJandyk u1 = UyJandyk();

  // k1.unChygar();

  // u1.unChygar();
}
