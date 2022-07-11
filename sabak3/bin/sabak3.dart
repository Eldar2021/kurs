void main(List<String> arguments) {
  // print(koshuu(12, 34));
  final res = koshuu(12, 34);
  print(res);

  print(kemituu(34, 2));

  print(koboytuu(8, 9));
  print(boluu(12, 6));

  print(butunBolugunBeret(25, 3));

  print(kaldyk(26, 2)); // 0 = 1
}

/// + koshot
num koshuu(num p1, num p2) {
  final summa = p1 + p2;
  return summa;
}

/// - kemitet
num kemituu(num p1, num p2) {
  final ayirma = p1 - p2;
  return ayirma;
}

///  * koboytot
num koboytuu(num p1, num p2) {
  final koboytundu = p1 * p2;
  return koboytundu;
}

///  / boluu
num boluu(num p1, num p2) {
  final tiyindi = p1 / p2;
  return tiyindi;
}

///  ~/ boluu
num butunBolugunBeret(num p1, num p2) {
  final tiyindi = p1 ~/ p2;
  return tiyindi;
}

///  % boluu
num kaldyk(num p1, num p2) {
  final tiyindi = p1 % p2;
  return tiyindi;
}

/** 
 бир функция болсун
 сырттан 2 сан тибинде параметр алсын
 аларды кошсун
 сумманы сыртка кайтарсын
*/
