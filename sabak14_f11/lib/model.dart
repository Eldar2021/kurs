/// final: saga(ozgormogo) bir jolu maani berem kiyin almashtyrbaym
/// ?: sen (ozgormo) null bolo alasyng // nullable

class Student {


  
  final int id;
  final String name;
  final String lastName;
  final String email;

  /// gender is 1 => famele: 2 => male
  final int? gender;
  final String? jeri;
  int group;
  String phone;
  int? age;
  String? address;

  /// marriage is true => uy Bolusu bar: false => uy Bolusu jok
  bool? marriage;

  Student({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    this.gender,
    this.jeri,
    required this.group,
    required this.phone,
    this.address,
    this.marriage,
  });
}

final mayrambek = Student(
  id: 1,
  name: 'Mayrambek',
  lastName: 'Iskakov',
  email: 'may@gmail.com',
  group: 8,
  phone: '+996502565732',
  address: 'Bishkek',
  marriage: true,
  jeri: 'Issyk kol',
);

final meerim = Student(
  id: 2,
  name: 'Meerim',
  lastName: 'Akmatova',
  email: 'meerim@gmail.com',
  group: 8,
  phone: '+996774816888',
  jeri: 'Issyk kol',
  gender: 1,
);

final adilbek = Student(
  id: 3,
  name: 'Adilbek',
  lastName: 'Kurmanbek uulu',
  email: 'adilbek@gmail.com',
  group: 8,
  phone: '+996999291210',
  jeri: 'Jumgal',
  gender: 2,
  marriage: true,
);

final altynbek = Student(
  id: 4,
  name: 'Altynbek',
  lastName: 'Bekmoldo uulu',
  email: 'altynbek@gmail.com',
  group: 8,
  phone: '+9261272790',
  jeri: 'Aksy',
  gender: 2,
  marriage: true,
);

final arsen = Student(
  id: 5,
  name: 'Arsen',
  lastName: 'Ardakbek uulu',
  email: 'arsen@gmail.com',
  group: 8,
  phone: '+996999771661',
  gender: 2,
  marriage: false,
);

final bakyt = Student(
  id: 6,
  name: 'Bakyt',
  lastName: 'Kurmanaliev',
  email: 'bakyt@gmail.com',
  group: 8,
  phone: '+996705365239',
  marriage: true,
);

final talant = Student(
  id: 7,
  name: 'Talant',
  lastName: 'Kazyev',
  email: 'talant@gmail.com',
  group: 8,
  phone: '+996702404771',
  gender: 2,
  marriage: false,
);
