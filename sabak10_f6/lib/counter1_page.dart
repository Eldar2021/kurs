import 'package:flutter/material.dart';

import 'counter2_page.dart';

class Counter1Page extends StatefulWidget {
  const Counter1Page({Key? key}) : super(key: key);

  @override
  State<Counter1Page> createState() => _Counter1PageState();
}

class _Counter1PageState extends State<Counter1Page> {
  int ozgoruuchuSan = 0;

  void koshuu() {
    ozgoruuchuSan++;
    setState(() {});
    print(ozgoruuchuSan);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter 1'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Text(
            '$ozgoruuchuSan',
            style: const TextStyle(fontSize: 70),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: koshuu,
                child: const Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  ozgoruuchuSan--;
                  print(ozgoruuchuSan);
                  setState(() {});
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Counter2Page(syrttanKelgenSan: ozgoruuchuSan),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

