import 'dart:convert';

List<User> fromStringList(String source) => (jsonDecode(source) as List).map((e) => User.fromMap(e)).toList();

class User {
  const User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.phone,
    required this.website,
  });

  final int id;
  final String name;
  final String userName;
  final String email;
  final String phone;
  final String website;

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      name: map['name'] as String,
      userName: map['username'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      website: map['website'] as String,
    );
  }
}
