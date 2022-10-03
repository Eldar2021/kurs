void main(List<String> arguments) async {
  // await salamBer();
  final res = await getName();
  print(res);
  // salamBer().then((value) => print('Some'));
  // koshtosh();

  final adilbek = await salamBer();
}

// async: ubakyt ala turgan funcsiya ekenin aittyk
// await: bir function butkongo cheyin kut
// <>: Generics
// Future: kelechekte berilet

Future<String> salamBer() async {
  await Future.delayed(Duration(seconds: 3)).then((value) => print('Salam S2'));
  print('Salam S1');
  return 'Adilbek';
}

void koshtosh() {
  print('Kosh bol');
}

Future<String> getName() async {
  await Future.delayed(Duration(seconds: 3));
  return 'Arsen';
}
