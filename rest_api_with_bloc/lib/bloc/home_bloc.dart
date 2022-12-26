import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/service/home_service.dart';

import '../models/user_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.service) : super(HomeInitial()) {
    on<HomeFetchEvet>(_getUsers);
  }

  final HomeService service;

  Future<void> _getUsers(HomeEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    final users = await service.getUsers();
    if (users != null) {
      emit(HomeSuccess(users));
    } else {
      emit(HomeError());
    }
  }
}
