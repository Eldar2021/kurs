import 'package:flutter/material.dart';
import 'package:sabak8_f3/users.dart';
// import 'package:sabak7_f2/counter.dart';

/*
Widget bul - flutterge tiesheluu baardyk nerse
dart - Object ----- Flutter - Widget
*/

// void: main funksiasy ech nerse kaytarbayt
// main: dartta bashtalgych funksiyanyn aty
// (): maindin bir funksia ekenin bildiret
// {}: main funksiasynyn denesi (ichinde emneler atkarylat)

// runApp: funksia-(tirlemeni ishtete turgan funksia, material.dart kelet)
// const: constant-> bir gana jolu kurulat(turuktuu)
// MininTirkemem: bir classtyn aty (StatelessWidget-> Widgettet-> kelgen bir class)
void main() {
  runApp(
    const MininTirkemem(title: 8), // MininTirkemem
  );
}

class SomeClass {}

// class: dart uchun jany tushunuk (Object)
// MininTirkemem: Widget ten kelgen class (Object)
// extends: Parent classtan child classka muras beret
// StatelessWidget ==> ?
class MininTirkemem extends StatelessWidget {
  // Key: Bir widgetke achkych bergibiz kelse berebiz
  // super: atasuna berile turgan propertyny beruu uchun (child tan parenke beret)
  const MininTirkemem({Key? key, required this.title}) : super(key: key);

  final int title;

  // @override: --> переопределить (atasyndagy funksiany kayra jazuu)
  // Widget: build metodunun kaytaruu tibi
  // build: funksianyn aty
  // BuildContext context: build funksiasy ala turgan parametr
  // BuildContext (flutter address) ==> address ?

  @override
  Widget build(BuildContext context) {
    // return: (возвращаться) build funksiasynyn kaytaruusu
    // MaterialApp: ==> (video alyp kelem)
    return MaterialApp(
      // title: MaterialApptyn bir property String tibinde
      // property: bir classtyn kasieti
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: MaterialApptyn bir property ThemeData tibinde
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // home: MaterialApptyn bir property Widget
      // MyHomePage: Widget
      // title: property (MyHomePage ke taandyk) String tibinde
      home: const UsersPage(),
    );
  }
}

/// StatefulWidget ==>?
class MyHomePage extends StatefulWidget {
  // MyHomePage({Key? key, required this.title}): MyHomePage tin constructor
  // Key? key,: Bir widgetke achkych bergibiz kelse berebiz
  // required this.title: constructor sozsuz bit title aluu kerek
  // super: atasuna berile turgan propertyny beruu uchun (child tan parenke beret)
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // final bir jolu maani berem (kiyin ozgertpoym)
  // int: ozgerulmo tibi (butun san)
  // title: ozgormonun aty;
  final int title;

  // @override: atatsyndagy methodtu janyrtuu
  @override
  // State=>
  // createState(): funksia
  // =>: {}
  State<MyHomePage> createState() => _MyHomePageState();
}

// void k() {
//   print('Kurs8');
//   print('Kurs8');
//   print('Kurs8');
//   print('Kurs8');
//   print('Kurs8');
// }

// void b() => print('Kurs8');

// State<MyHomePage> ==>?
class _MyHomePageState extends State<MyHomePage> {
  // int: ozgerulmo tibi (butun san)
  // =: ozgormogo mmani atayt
  // 0: ozgormonun maanisi
  int _counter = 0;

  void _incrementCounter() {
    // setsetState: funksianyn aty (setState funksiasy chakyrylganda build funksiasy kayradan ishteyt)
    setState(() {
      // _counter++; _counter din maanisine birdi kosh (_counter = _couneter+1;)
      _counter++;
    });
  }

  // @override: --> переопределить (atasyndagy funksiany kayra jazuu)
  @override
  // Widget build kaytaruu tibin bildirdi (return type)
  // build => kuruu (bir method tun aty)
  // ()
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title.toString()),
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

class Tash {
  final String aty;

  Tash(this.aty);

  // Tash(this.aty);
  /// Property
  // katuu
  // formaluu

  /// Method
  // kulayt
  // karmayt
}
