import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/bloc/home_bloc.dart';

import 'cubit_page.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: Center(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeInitial) {
              return const Text('initial state');
            } else if (state is HomeLoading) {
              return const CircularProgressIndicator();
            } else if (state is HomeSuccess) {
              return UserListBuilder(users: state.users);
            } else if (state is HomeError) {
              return const Text('error state');
            } else {
              return const Text('default state');
            }
          },
        ),
      ),
    );
  }
}
