import 'models.dart';

/// <>: generic

final students = <Student>[mayrambek, meerim, adilbek, altynbek, arsen, bakyt, talant];

void main(List<String> arguments) {
  controlEmailPhone02('+9965025657323', 'may@gmail.com');
}

void controlEmailPhone02(String phone, String email) {
  // phone = +996990039301    email = eldi@gmail.com

  // i = 0           students.length = 7 
  for(int i = 0; i <= students.length; i++){
    // i = 6
    if(phone == students[i].phone&& email== students[i].email){
      // students[6] =  talant (+996702404771, talant@gmail.com)
      print('Kosh Kelding ${students[i].name}');
      break;
    }else{
      // i == 6; students.length = 7
      if(i == students.length - 1){
        print('Kechiresiz Login je Phone kata');
        break;
      }
    }
  }
}

void controlEmailPhone02NoComment(String phone, String email) {
  for(int i = 0; i <= students.length; i++){
    if(phone == students[i].phone&& email== students[i].email){
      print('Kosh Kelding ${students[i].name}');
      break;
    }else{
      if(i == students.length - 1){
        print('Kechiresiz Login je Phone kata');
        break;
      }
    }
  }
}



/// Birinchi method
void controlEmailPhone01(String phone, String email) {
  // phone == +9967024047713
  // email == talant@gmail.com
  int index = 0;
  // index = 0
  for (final student in students) {
    // index = 6
    // student = talant
    index++;
    // index = 7
    if (phone == student.phone && email == student.email) {
      // phone == +996702404771  email == talant@gmail.com
      print('Kosh Kelding ${student.name}');
      break;
      // index = 1 buttu
    } else {
      if(index == students.length){
        // index = 7   students.length = 7
        print('Kechiresiz Login je Phone kata');
      }else{
        continue;
      } 
    }
  }
}

void controlEmailPhone01NoComment(String phone, String email) {
  int index = 0;
  for (final student in students) {
    index++;
    if (phone == student.phone && email == student.email) {
      print('Kosh Kelding ${student.name}');
      break;
    } else {
      if(index == students.length){
        print('Kechiresiz Login je Phone kata');
      }else{
        continue;
      } 
    }
  }
}
