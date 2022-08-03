import 'package:flutter/material.dart';

class Counter2Page extends StatelessWidget {
  const Counter2Page({Key? achkych, required this.syrttanKelgenSan}) : super(key: achkych);

  final int syrttanKelgenSan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter 2'),
      ),
      body: Center(
        child: Text(
          '$syrttanKelgenSan',
          style: const TextStyle(fontSize: 70),
        ),
      ),
    );
  }
}