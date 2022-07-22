import 'package:flutter/material.dart';
import 'package:sabak6_f1/counter.dart';

/*
Widget bul - flutterge tiesheluu baardyk nerse
dart - Object ----- Flutter - Widget
*/

// void: main funksiasy ech nerse kaytarbayt
// main: dartta bashtalgych funksiyanyn aty
// (): maindin bir funksia ekenin bildiret
// {}: main funksiasynyn denesi (ichinde emneler atkarylat)

// runApp: funksia-(tirlemeni ishtete turgan funksia)
// const: constant->bir gana jolu kurulat(turuktuu)
// MininTirkemem: bir classtyn aty (StatelessWidget-> Widgettet-> kelgen bir class)
void main() {
  runApp(const EsepteTirkemesi());
}

// class: dart uchun jany tushunuk (Object)
// MininTirkemem: Widget ten kelgen class (Object)
// extends: Parent classtan child classka muras beret
// StatelessWidget ==> ?
class MininTirkemem extends StatelessWidget {
  // Key: Bir widgetke achkych bergibiz kelse berebiz
  // super: atasuna berile turgan propertyny beruu uchun (child tan parenke beret)
  const MininTirkemem({Key? key}) : super(key: key);

  // @override: --> переопределить (atasyndagy funksiany kayra jazuu)
  // Widget: build metodunun kaytaruu tibi
  // build: funksianyn aty
  // BuildContext context: build funksiasy ala turgan parametr
  // BuildContext (flutter address) ==>?
  @override
  Widget build(BuildContext context) {
    // return: (возвращаться) build funksiasynyn kaytaruusu
    // MaterialApp: ==> (video alyp kelem)
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/// StatefulWidget ==>?
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


// State<MyHomePage> ==>?
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    // setsetState: funksianyn aty (setState funksiasy chakyrylganda build funksiasy kayradan ishteyt)
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // <Widget> ==>?
          children: <Widget>[
            const Text('Бүгүн Flutter ге өтүп жатабыз'),
            Text(
              '$_counter',
              // Theme.of(context).textTheme.headline4 ==> ?
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        // tooltip ==> ?
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
