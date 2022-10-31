import 'package:counter_with_getx/counter_with_getx/counter_page_with_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyAppGetx extends StatelessWidget {
  const MyAppGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterWithGetxPage(),
    );
  }
}
