import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabak15_f12/model.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.student, {Key? key}) : super(key: key);
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEC106),
      appBar: AppBar(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: const Color(0xff751E85),
        ),
        elevation: 10.0,
        // scrolledUnderElevation: 9,
        shadowColor: Colors.black,
        backgroundColor: const Color(0xffFEC106),
        title: Text(
          student.name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: const Color.fromARGB(170, 82, 35, 57),
            height: 2.5,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'I’m Rich',
              style: GoogleFonts.sofia(
                color: Colors.black,
                fontSize: 48,
                fontWeight: FontWeight.w400,
                height: 2.3,
              ),
            ),
            Text(
              'I’m Rich',
              style: GoogleFonts.pacifico(
                color: const Color(0xffF63B36),
                fontSize: 48,
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
            Image.asset('assets/icons/diamond_kurs_2.png'),
          ],
        ),
      ),
    );
  }
}

/*
body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.cyan,
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 89, 255, 6),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 255, 72, 0),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 221, 0, 255),
            ),
          ),
        ],
      ),

*/
