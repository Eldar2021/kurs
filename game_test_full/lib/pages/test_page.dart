import 'package:flutter/material.dart';
import 'package:game_test_full/components/test_page_app_bar_title.dart';
import 'package:game_test_full/components/test_slider.dart';
import 'package:game_test_full/components/variants.dart';
import 'package:game_test_full/constants/app_color.dart';
import 'package:game_test_full/models/suroo.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.suroo});

  final List<Suroo> suroo;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgColor,
        title: TestPageAppBarTitle(
          kataJooptor: kataJooptor,
          tuuraJooptor: tuuraJooptor,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          TestSlider(value: index),
          Text(
            widget.suroo[index].text,
            style: const TextStyle(fontSize: 32, height: 1.5),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/capitals/${widget.suroo[index].image}.jpeg'),
            ),
          ),
          Variants(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Sizdin Test jiyintygynyz!'),
                    content: Text('tuure: $tuuraJooptor\nkata $kataJooptor'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          index = 0;
                          kataJooptor = 0;
                          tuuraJooptor = 0;
                          setState(() {});
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                    ],
                  ),
                );
              } else {
                if (isTrue == true) {
                  tuuraJooptor++;
                } else {
                  kataJooptor++;
                }
                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
