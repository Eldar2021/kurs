import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rest_api_with_bloc/models/user_model.dart';
import 'package:rest_api_with_bloc/service/home_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.service) : super(const HomeState());

  final HomeService service;

  Future<void> getUsers(int value) async {
    emit(const HomeState(status: FetchStatus.loading));
    final users = await service.getUsers();
    if (users != null) {
      emit(HomeState(status: FetchStatus.success, users: users));
    } else {
      emit(const HomeState(status: FetchStatus.error));
    }
  }
}
