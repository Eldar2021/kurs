import 'package:sabak2/sabak2.dart' as sabak2;

void main(List<String> arguments) {
  print('kurs8'.runtimeType);
  print(12.runtimeType);
  print(12.34.runtimeType);
  print(true.runtimeType);

  String atalganString = 'kurs8';

  Function birFunksiaBarabarMenen = () {
    print('salam kyrgyz');
  };

  birFunksiaBarabarMenen.call();
  birFunksia();

  torttuEkigeKoboyt();
  int jiyintyk = beshtiEkigeKoboyt();
  print('jiyintyk');
  print(jiyintyk);
}

birFunksia() {
  print('birFunksia');
}

void torttuEkigeKoboyt() {
  int resultat = 4 * 2;
  print(resultat);
}

int beshtiEkigeKoboyt() {
  int resultat = 5 * 2;
  print('resultat');
  print(resultat);
  return resultat;
}
