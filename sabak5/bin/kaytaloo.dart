class MobileDeveloper extends Developer {
  MobileDeveloper({
    required super.name,
    required super.jash,
    required super.framework,
    required super.ishtepJataby,
  });
}

class WebDeveloper extends Developer {
  WebDeveloper({
    required super.name,
    required super.jash,
    required super.framework,
    required super.ishtepJataby,
  });
}

class Developer {
  // property => ozgocholuktor
  String name;
  int jash;
  String framework;
  bool ishtepJataby;

  Developer({
    required this.name,
    required this.jash,
    required this.framework,
    required this.ishtepJataby,
  });

  // method => funksia(classka taandyk)

  void taanysh() {
    print('menin atym $name, jashym $jash, koldongon tehnologiyam $framework');
  }

  void kodKaz() {
    print('''
void main(List<String> args) {
  int a = 12;

  MobileDeveloper m1 = MobileDeveloper(
    name: 'Altynbek',
    jash: 34,
    framework: 'Flutter',
  );

  m1.taanysh();
  m1.kodJaz();
}

 ''');
  }
}

void main(List<String> args) {
  MobileDeveloper m1 = MobileDeveloper(
    name: 'Adilbek',
    jash: 32,
    framework: 'flutter',
    ishtepJataby: true,
  );

  WebDeveloper w1 = WebDeveloper(
    name: 'Azamat',
    jash: 39,
    framework: 'WordPress',
    ishtepJataby: true,
  );

  m1.taanysh();
  m1.kodKaz();

  w1.taanysh();
  w1.kodKaz();
}
