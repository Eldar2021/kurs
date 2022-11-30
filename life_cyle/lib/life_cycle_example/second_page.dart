import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color? _color;

  @override
  void initState() {
    changeColor(Colors.deepOrange, 2);
    super.initState();
  }

  Future<void> changeColor(Color? color, int second) async {
    await Future.delayed(Duration(seconds: second));
    _color = color;
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    changeColor(Colors.blueAccent, 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: const Center(
        child: Text('SecondPage'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _color = null;
  }
}
