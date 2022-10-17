// ignore_for_file: public_member_api_docs, sort_constructors_first

class Mashina {
  const Mashina({
    required this.marka,
    required this.jyl,
    required this.nomer,
  });

  final String marka;
  final int jyl;
  final String nomer;

  factory Mashina.fromResponse(Map<String, dynamic> json) {
    return Mashina(
      marka: json["marka"],
      jyl: json["jyl"],
      nomer: json["nomer"],
    );
  }
}

Map response = {
  "cars": [
    {"marka": "mers", "jyl": 2022, "nomer": "AB001WZ"},
    {"marka": "mers01", "jyl": 2012, "nomer": "AB002WZ"},
    {"marka": "mers02", "jyl": 2021, "nomer": "AB003WZ"},
    {"marka": "mers03", "jyl": 2020, "nomer": "AB004WZ"},
    {"marka": "mers04", "jyl": 2019, "nomer": "AB005WZ"},
  ],
};

void main(List<String> args) {
  final mers1 = Mashina(
    marka: response["cars"][0]["marka"],
    jyl: response["cars"][0]["jyl"],
    nomer: response["cars"][0]["nomer"],
  );
  final mers2 = Mashina(
    marka: response["cars"][1]["marka"],
    jyl: response["cars"][1]["jyl"],
    nomer: response["cars"][1]["nomer"],
  );

  final mers3 = Mashina.fromResponse(response["cars"][2]);
  final mers4 = Mashina.fromResponse(response["cars"][3]);
  final mers5 = Mashina.fromResponse(response["cars"][4]);

  print(mers1.nomer);
  print(mers2.nomer);
  print(mers3.nomer);
  print(mers4.nomer);
  print(mers5.nomer);

  // is ushundai typtaby
  // as berilgen type je name katary koldonom
  dynamic a1 = 'men dinamic a1 in';

  if (a1 is String) {
    a1 = true;
  } else if (a1 is int) {
    a1 = 12.2;
  } else {
    a1 = null;
  }

  print(a1);
}
