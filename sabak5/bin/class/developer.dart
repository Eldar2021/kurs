class Developer {
  String name; // property
  int jash; // property
  String framework; // property

  Developer({
    required this.name,
    required this.jash,
    required this.framework,
  });

  void taanysh() {
    print('menin atym $name, jashym $jash, koldongon tehnologiyam $framework');
  }

  void kodJaz() {
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
