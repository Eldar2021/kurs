import 'package:flutter/material.dart';

class EsepteTirkemesi extends StatelessWidget {
  const EsepteTirkemesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EsepteTirkemesi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      home: const EseptePage(),
    );
  }
}

class EseptePage extends StatefulWidget {
  const EseptePage({Key? key}) : super(key: key);

  @override
  State<EseptePage> createState() => _EseptePageState();
}

class _EseptePageState extends State<EseptePage> {
  int san = 0;

  void koshuu() {
    san++;
    print(san);
    setState(() {});
    // san = san + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esepte ekrany'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Бүгүн Flutter ге өтүп жатабыз'),
            Text(
              '$san',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: koshuu,
        // child: const Icon(Icons.add),
        child: Row(
          children: const [
            Icon(Icons.add),
            Icon(Icons.remove),
          ],
        ),
      ),
    );
  }
}
