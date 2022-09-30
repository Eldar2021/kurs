class Suroo {
  const Suroo({
    required this.text,
    required this.jooptor,
    required this.image,
  });
  final String text;
  final List<Joop> jooptor;
  final String image;
}

class Joop {
  const Joop({
    required this.text,
    this.isTrue = false,
  });

  final String text;
  final bool isTrue;
}

List<Suroo> asiaQuessions = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];

List<Suroo> africaQuessions = [s5, s6, s7, s8, s9, s10, s1, s2, s3, s4];

const s1 = Suroo(
  text: 'Ashhabad',
  jooptor: [
    Joop(text: 'Kyrgyzstan'),
    Joop(text: 'Koreya'),
    Joop(text: 'Afganiztan'),
    Joop(text: 'Turkmenistan', isTrue: true),
  ],
  image: 'ashhabad',
);

const s2 = Suroo(
  text: 'Astana',
  jooptor: [
    Joop(text: 'Kazakhstan', isTrue: true),
    Joop(text: 'Japan'),
    Joop(text: 'Russia'),
    Joop(text: 'Turkmenistan'),
  ],
  image: 'astana',
);

const s3 = Suroo(
  text: 'Bishkek',
  jooptor: [
    Joop(text: 'Kyrgyzstan', isTrue: true),
    Joop(text: 'Singapur'),
    Joop(text: 'Britaniya'),
    Joop(text: 'Swessaria'),
  ],
  image: 'bishkek',
);

const s4 = Suroo(
  text: 'Dushanbe',
  jooptor: [
    Joop(text: 'Kyrgyzstan'),
    Joop(text: 'Koreya'),
    Joop(text: 'Afganiztan'),
    Joop(text: 'Tajikstan', isTrue: true),
  ],
  image: 'dushanbe',
);

const s5 = Suroo(
  text: 'New-Dehli',
  jooptor: [
    Joop(text: 'Iran'),
    Joop(text: 'Pakistan'),
    Joop(text: 'India', isTrue: true),
    Joop(text: 'Indonesia'),
  ],
  image: 'new-delhi',
);

const s6 = Suroo(
  text: 'Pekin',
  jooptor: [
    Joop(text: 'Uzbekistan'),
    Joop(text: 'Chine', isTrue: true),
    Joop(text: 'Koreya'),
    Joop(text: 'Taiwan'),
  ],
  image: 'pekin',
);

const s7 = Suroo(
  text: 'Seul',
  jooptor: [
    Joop(text: 'Koreya', isTrue: true),
    Joop(text: 'Tailand'),
    Joop(text: 'Chine'),
    Joop(text: 'Vetnam'),
  ],
  image: 'seul',
);

const s8 = Suroo(
  text: 'Tashkent',
  jooptor: [
    Joop(text: 'Kyrgyzstan'),
    Joop(text: 'Tajikstan'),
    Joop(text: 'Uzbekistan', isTrue: true),
    Joop(text: 'Azerbaijan'),
  ],
  image: 'tashkent',
);

const s9 = Suroo(
  text: 'Tokyo',
  jooptor: [
    Joop(text: 'Japonya', isTrue: true),
    Joop(text: 'Kongo'),
    Joop(text: 'Singapur'),
    Joop(text: 'Myanma'),
  ],
  image: 'tokyo',
);

const s10 = Suroo(
  text: 'Ulan-Bator',
  jooptor: [
    Joop(text: 'Mongolya', isTrue: true),
    Joop(text: 'Nepal'),
    Joop(text: 'Fransia'),
    Joop(text: 'Burundi'),
  ],
  image: 'ulan_bator',
);
