void main(List<String> args) {
  // sandyTap(15);

  // jupJeTak(27.9);

  lightOrDartk(true);
}

void jupJeTak(num p) {
  final res = p % 2;
  if (res == 0) {
    print('$p sany jup san');
  } else if (res == 1) {
    print('$p sany tak');
  } else if (res == 2) {
  } else if (res == 3) {
  } else {
    print('$p bolchok san');
  }
  print('Kurs8');
}

void sandyTap(num p) {
  int a = 6;
  if (p == a) {
    print('sen tapryng tuura joop $a');
  } else if (p < 10 && p > 1) {
    print('jakyndashtyng');
  } else if (p > 10 || p < 0) {
    print('joop alys');
  } else {
    print('sen tappadyng');
  }
}

bool con() {
  return true;
}

void belgisiz() {
  if (con()) {
    print('con() true');
  }
}

void lightOrDartk(bool svetliyTemaby) {
  if (svetliyTemaby) {
    print('tirkeme svetliy temada');
  } else {
    print('tirkeme dark temada');
  }
}
