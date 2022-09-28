import 'package:flutter/material.dart';

List<Color> _colors = [
  Colors.green,
  Colors.green,
  Colors.red,
  Colors.green,
  Colors.red,
  Colors.green,
  Colors.red,
  Colors.red,
  Colors.green,
  Colors.red,
  Colors.green,
  Colors.red,
];

class Kalpele extends StatelessWidget {
  const Kalpele({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalpele'),
      ),
      body: Center(
        child: CustomSlider(
          lenght: 10,
          colors: _colors,
        ),
      ),
    );
  }
}

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    Key? key,
    required this.lenght,
    required this.colors,
  }) : super(key: key);

  final int lenght;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4,
      child: Row(
        children: List.generate(
          lenght,
          (index) {
            final color = colors.length > index ? colors[index] : Colors.grey;
            return Expanded(
              child: Container(
                color: color,
              ),
            );
          },
        ),
      ),
    );
  }
}

