import 'package:flutter/material.dart';

// ; => dart ta bir suylomdun butkonu

// suylom: bir toluk oy;

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int san = 7;

  void kosh() {
    setState(() {
      san++;
    });
  }

  void aluu() {
    setState(() {
      san--;
    });
  }

// build = kuruu
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        // leading: Icon(Icons.search),
        title: const Text('App Title'),
        actions: const [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 90),
            const FlutterLogo(size: 150),
            const Text('Bul birinchi tapshyrma'),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 70),
                child: Text(
                  '$san',
                  style:
                      const TextStyle(fontSize: 30, color: Colors.deepOrange),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: kosh,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 40),
                ElevatedButton(
                  onPressed: aluu,
                  child: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/// StatelessWidget jashoo sikli bar
/// 
/// StatefulWidget jashoo sikli jok
