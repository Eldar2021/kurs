import 'dart:math';

import 'package:flutter/material.dart';

class Home2Page extends StatefulWidget {
  const Home2Page({Key? key}) : super(key: key);

  @override
  State<Home2Page> createState() => _Home2PageState();
}

class _Home2PageState extends State<Home2Page> {
  int dice1 = 1;
  int dice2 = 2;

  void change() {
    setState(() {
      dice1 = Random().nextInt(7);
      dice2 = Random().nextInt(7);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: AppBar(
        backgroundColor: const Color(0xffFF5353),
        title: const Text(
          'ТАПШЫРМА - 05',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Row(
          children: [
            DiceImage2(
              index: dice1 == 0 ? 1 : dice1,
              onTap: change,
            ),
            DiceImage2(
              index: dice2 == 0 ? 1 : dice2,
              onTap: change,
            ),
          ],
        ),
      ),
    );
  }
}

class DiceImage2 extends StatelessWidget {
  const DiceImage2({super.key, this.onTap, required this.index});

  final void Function()? onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/dice$index.png'),
        ),
      ),
    );
  }
}
