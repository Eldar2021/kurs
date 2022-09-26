import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Home1();
              },
            ),
          );
        },
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return const Home2();
          //     },
          //   ),
          // );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Home2();
              },
            ),
          );
        },
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home2'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Home1();
              },
            ),
          );
        },
      ),
    );
  }
}
