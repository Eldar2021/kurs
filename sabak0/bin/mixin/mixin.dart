class WebDeveloter extends Adam with Developer, JaksyDeveloperbi {
  WebDeveloter(super.name, super.tarmak);

  @override
  String get nameDev => name;

  @override
  String get tarmakDev => tarmak;

  @override
  bool get jakshyby => true;
}

class MobileDeveloter extends Adam with Developer, JaksyDeveloperbi {
  MobileDeveloter(super.name, super.tarmak);

  @override
  String get nameDev => name;

  @override
  String get tarmakDev => tarmak;

  @override
  bool get jakshyby => false;
}

mixin JaksyDeveloperbi {
  bool get jakshyby;

  void kanday() {
    if (jakshyby) {
      print('Men jaksy Developermin');
    } else {
      print('Men jaman Developermin');
    }
  }
}

mixin Developer {
  String get nameDev;
  String get tarmakDev;

  void kodJAz() {
    print('kod lazyp jatam');
  }

  void tanysh() {
    print('menin atyn $nameDev. Men $tarmakDev min');
  }
}

class Adam {
  final String name;
  final String tarmak;

  Adam(this.name, this.tarmak);

  void jashaim() {
    print('me 21 kylmda jashaym');
  }
}

void main(List<String> args) {
  // final d1 = Developer();

  final w1 = WebDeveloter('Aziz', 'WebDeveloter');
  w1.jashaim();
  w1.tanysh();
  w1.kodJAz();
  w1.kanday();

  final m1 = MobileDeveloter('Turat  ', 'MobileDeveloter');
  m1.jashaim();
  m1.tanysh();
  m1.kodJAz();
  m1.kanday();
}
