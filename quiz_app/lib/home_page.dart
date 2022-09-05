import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_model.dart';
import 'package:quiz_app/widget/quiz_button.dart';
import 'package:quiz_app/widget/result_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int intex = 4;

  void teksher() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizzes[intex].question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const Spacer(),
            QuizButton(
              tuuraButtonbu: true,
              baskanda: (maani) {
                print(maani);
              },
            ),
            const SizedBox(height: 20),
            QuizButton(
              tuuraButtonbu: false,
              baskanda: (maani) {
                print(maani);
              },
            ),
            const SizedBox(height: 50),
            Row(
              children: const [
                ResultIcon(true),
                ResultIcon(false),
              ],
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Тапшырма - 07',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
