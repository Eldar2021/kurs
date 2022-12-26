part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({
    this.status = FetchStatus.initial,
    this.users,
  });

  final FetchStatus status;
  final List<User>? users;

  @override
  List<Object> get props => [status];
}

enum FetchStatus { initial, loading, success, error }
