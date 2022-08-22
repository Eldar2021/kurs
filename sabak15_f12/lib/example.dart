import 'model.dart';

/// <>: generic

final students = <Student>[mayrambek, meerim, adilbek, altynbek, arsen, bakyt, talant];

void main(List<String> arguments) {
  
  controlEmailPhone('+996999771661', 'arsen@gmail.com');
}

void controlEmailPhone(String phone, String email) {
  for (final student in students) {
    if (phone == student.phone && email == student.email) {
      print('Kosh Kelding ${student.name}');
      break;
    } else {
      print('Kechiresiz Login je Phone kata');
    }
  }
}
