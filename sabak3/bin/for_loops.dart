void main(List<String> args) {
  List sandar = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(sandar);
  int san = 0;
  while (san < 10) {
    print(san);
    san++;
  }
}

void onGoCheyinSana() {
  for (int item = 0; item < 10; item++) {
    print(item);
  }
}

void onGoCheyinSanaListMenet() {
  List sandar = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  for (int item in sandar) {
    print(item);
  }
}
