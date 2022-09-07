import 'package:flutter/material.dart';
import 'package:stateless_stateful/page/home_page.dart';

import 'page/home_page2.dart';

// StatelessWidget no life cycle
// StatefulWidget yes life cycle
// BMI UI

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
