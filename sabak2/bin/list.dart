// , elementterdin arasyn bolup turat
// .

void main(List<String> args) {
  List birList = [12, "Kurs8", true, 12.3];
  print(birList);
  print(birList.length);
  print(birList[1]);
  print(birList.reversed);
  print(birList.runtimeType);
  print(birList.first);
  birList.add('Kop koldonulgandar');
  print(birList);
  birList.clear();
  print(birList);

  // Olko kyrgyzstan = Olko();
  // print(kyrgyzstan.kalky);
}

// class Olko{
//   int kalky = 6000000;
// }
