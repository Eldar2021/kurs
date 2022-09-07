import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({Key? key}) : super(key: key);

  String atym = 'Manas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatelessWidget'),
      ),
      body: Center(
        child: Text('$atym'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // esep++;
          log(atym);
          // setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
