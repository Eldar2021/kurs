import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int esep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulWidget'),
      ),
      body: Center(
        child: Text('$esep'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          esep++;
          log(esep.toString());
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
