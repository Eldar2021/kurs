import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/cubit/home_cubit.dart';
import 'package:rest_api_with_bloc/models/user_model.dart';

class CubitPage extends StatelessWidget {
  const CubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            switch (state.status) {
              case FetchStatus.initial:
                return const Text('initial state');
              case FetchStatus.loading:
                return const CircularProgressIndicator();
              case FetchStatus.error:
                return const Text('error state');
              case FetchStatus.success:
                return UserListBuilder(users: state.users!);
              default:
                return const Text('default state');
            }
          },
        ),
      ),
    );
  }
}

class UserListBuilder extends StatelessWidget {
  const UserListBuilder({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        final user = users[index];
        return ListTile(
          title: Text(user.name),
          subtitle: Text(user.userName),
        );
      },
    );
  }
}
