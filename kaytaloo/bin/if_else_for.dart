/*
bizge bir nomerlerden turgan List betrilet
al listten Jup sandardy bashka Tak sandardy bashka listke koshush kerek
akyrynda alardy print kyl

jup sandar
[0, 2, 4 ...]
tak sandar
[1, 3, 5 ...]
bolchok sandar
[12.3, 45.9, 1.2 ...]

// jardam => for, if  % operator ==
*/

void main(List<String> args) {
  var items = [0, 1, 45.9, 7, 8, 9, 10, 12.3, 267, 2, 223, 222, 1.2, 3, 4, 5, 6];
  var jupSandar = [];
  var takSandar = [];
  var bolChokSandar = [];

  for (num item in items) {
    // (1) item  = 0
    // (i = item % 2) => i = 0;
    // if(i == 0) => true
    // jupSandar.add(item); => var jupSandar = [0];

    // (2) item = 1;
    // (i = item % 2) => i = 1;
    // if(i == 0) => false;
    // jupSandar.add(item); (atkarylgan jok)
    // else if (i == 1) => true;
    // takSandar.add(item); // var takSandar = [1];

    // (3) item = 45.9;
    // final i = item % 2;
    // if (i == 0) => false
    // jupSandar.add(item); (atkarylgan jok)
    // else if (i == 1) => false;
    // takSandar.add(item); (atkarylgan jok)
    // else (ech bir shart true bolboso)
    // bolChokSandar.add(item); => var bolChokSandar = [45.9];

    final i = item % 2;
    if (i == 0) {
      jupSandar.add(item);
    } else if (i == 1) {
      takSandar.add(item);
    } else {
      bolChokSandar.add(item);
    }
  }

  // for ichi butkondo 
  // var jupSandar = [0, 8, 10, 2, 222, 4, 6];
  // var takSandar = [1, 7, 9, 267, 223, 3, 5];
  // var bolChokSandar = [45.9, 12.3, 1.2];

  print('Berilgen list');
  print(items);

  print('jup sandar');
  print(jupSandar);

  print('tak sandar');
  print(takSandar);

  print('bolchok sandar');
  print(bolChokSandar);
}
