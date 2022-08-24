import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Flutter Xylophone'),
      ),
      body: Column(
        children: const [
          CustomCard(color: Color(0xffEF443A), nota: 'do'),
          CustomCard(color: Color(0xffF99700), nota: 're'),
          CustomCard(color: Color(0xffFFE93B), nota: 'mi'),
          CustomCard(color: Color(0xff4CB050), nota: 'fa'),
          CustomCard(color: Color(0xff2E968C), nota: 'sol'),
          CustomCard(color: Color(0xff2996F5), nota: 'lya'),
          CustomCard(color: Color(0xff9B28B1), nota: 'si'),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.color,
    required this.nota,
  }) : super(key: key);

  final Color color;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () async {
          await AudioPlayer().play(AssetSource('/zvuk-notyi-$nota.wav'));
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
