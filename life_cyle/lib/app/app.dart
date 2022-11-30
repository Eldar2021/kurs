import 'package:flutter/material.dart';
import 'package:life_cyle/app/router.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.route, {super.key});

  final bool route;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: (settings) => MyRoutes.onGenerateRoute(settings, route),
    );
  }
}
