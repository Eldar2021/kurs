class DuynolukTil {
  void salamdash(String ulytAty) {
    print('Hello I am $ulytAty');
  }
}

class Greck extends DuynolukTil {}

class English extends DuynolukTil {}

class Kyrgyz extends DuynolukTil {
  /// Атасынагы методту кайра устунон жаз
  @override
  /// Атасындагы методту кайра атап жатканын билдирет
  void salamdash(String ulytAty) {
    print('Салам Мен Кыргызмын');
  }
}

void main(List<String> args) {
  var greck = Greck();
  var enlish = English();
  var kyrgyz = Kyrgyz();

  greck.salamdash('Greck');
  enlish.salamdash('English');
  kyrgyz.salamdash('Kyrgyz');
}
