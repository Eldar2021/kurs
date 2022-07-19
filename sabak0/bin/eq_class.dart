import 'package:equatable/equatable.dart';

class S1 extends Equatable {
  final int id;
  final String name;

  S1(this.id, this.name);

  @override
  List<Object?> get props => [];
}

final roseInglish = S1(1, 'Rose');
final rozaKyrgyz = S1(1, 'Роза');

void main(List<String> args) {
  print(roseInglish == rozaKyrgyz);
}
