import 'package:flutter/material.dart';

class StateFulExample extends StatefulWidget {
  const StateFulExample({Key? key}) : super(key: key);

  @override
  State<StateFulExample> createState() => _StateFulExampleState();
}

class _StateFulExampleState extends State<StateFulExample> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// ---------------------------------------------------- //

class StateLessExample extends StatelessWidget {
  const StateLessExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
