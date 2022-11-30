import 'package:flutter/material.dart';
import 'package:life_cyle/life_cycle_example/second_page.dart';

// initState // didChangeDependencies // dispose

class HomePageLie extends StatefulWidget {
  const HomePageLie({super.key});

  @override
  State<HomePageLie> createState() {
    return _HomePageLieState();
  }
}

class _HomePageLieState extends State<HomePageLie> {
  // @override
  // void initState() {
  //   print('initState');
  //   super.initState();
  // }

  // @override
  // void didChangeDependencies() {
  //   print('didChangeDependencies');
  //   super.didChangeDependencies();
  // }

  // @override
  // void dirdy() {
  //   super.durty();
  // }

  // @override
  // void didUpdateWidget(Type oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  // }

  // @override
  // void setState(VoidCallback fn) {
  //   super.setState(fn);
  // }

  // @override
  // void clean() {
  //   super.clean();
  // }

  // @override
  // void dispose() {
  //   print('dispose');
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: const Center(
        child: Text('HomePage'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondPage()),
        );
      }),
    );
  }
}
