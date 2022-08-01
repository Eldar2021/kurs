import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Counter1(),
    );
  }
}

class Counter1 extends StatefulWidget {
  const Counter1({Key? key}) : super(key: key);

  @override
  State<Counter1> createState() => _Counter1State();
}

class _Counter1State extends State<Counter1> {
  int san = 0;

  void koshuu() {
    san++;
    setState(() {});
    print(san);
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
            '$san',
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
                  san--;
                  print(san);
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
              builder: (context) => const Counter2(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Counter2 extends StatelessWidget {
  const Counter2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter 2'),
      ),
      body: const Center(
        child: Text(
          '0',
          style: TextStyle(fontSize: 70),
        ),
      ),
    );
  }
}
