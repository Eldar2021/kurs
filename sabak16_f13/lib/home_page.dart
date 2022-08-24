import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dice1 = 1;
  int dice2 = 2;

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
            DiceImage(dice1),
            DiceImage(dice2),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DiceImage extends StatefulWidget {
  DiceImage(this.index, {Key? key}) : super(key: key);

  int index;

  @override
  State<DiceImage> createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            widget.index = Random().nextInt(6) + 1;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/dice${widget.index}.png'),
        ),
      ),
    );
  }
}
