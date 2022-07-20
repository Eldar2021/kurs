import 'mobile_developer.dart';
import 'web_developer.dart';

// import: bashka dart filedyn ichindegi kodtordu importtoit(al kodtordu bul fileda koldonuuga mumkunchuluk beret)
// 'mobile_developer.dart' importtoluuchu fildyn jolu(path)

void main(List<String> args) {
  MobileDeveloper m1 = MobileDeveloper(
    name: 'Altynbek',
    jash: 34,
    framework: 'Flutter',
  );

  m1.taanysh();
  m1.kodJaz();

  WebDeveloper w1 = WebDeveloper(
    name: 'Anna',
    jash: 28,
    framework: 'Angular',
  );

  w1.taanysh();
  w1.kodJaz();
}
