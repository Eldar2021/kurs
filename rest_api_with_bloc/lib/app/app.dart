import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/bloc/home_bloc.dart';
import 'package:rest_api_with_bloc/cubit/home_cubit.dart';
import 'package:rest_api_with_bloc/home/cubit_page.dart';
import 'package:rest_api_with_bloc/service/home_service.dart';

import '../home/bloc_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => HomeCubit(homeService)..getUsers(1),
        child: const CubitPage(),
      ),
      // home: BlocProvider(
      //   create: (context) => HomeBloc(homeService)..add(HomeFetchEvet()),
      //   child: const BlocPage(),
      // ),
    );
  }
}
