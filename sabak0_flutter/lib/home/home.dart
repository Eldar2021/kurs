import 'package:flutter/material.dart';
import 'package:sabak0_flutter/detail/detail.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailView(
                  text: 'Men saga null berneym',
                ),
              ),
            );
          },
          child: const Text('HomeView'),
        ),
      ),
    );
  }
}
