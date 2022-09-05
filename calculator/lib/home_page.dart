import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Column(
        children: [
          const Expanded(child: Text('cal')),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NumberButton(
                      nomer: 1,
                      bizBergenFunksiya: (maani) {
                        print('bizBergenFunksiya $maani');
                      },
                    ),
                    NumberButton(
                      nomer: 2,
                      bizBergenFunksiya: (value) {
                        print('bizBergenFunksiya $value');
                      },
                    ),
                    NumberButton(
                      nomer: 3,
                      bizBergenFunksiya: (san) {
                        print('bizBergenFunksiya $san');
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NumberButton(
                      nomer: 4,
                      bizBergenFunksiya: (integer) {
                        print('bizBergenFunksiya $integer');
                      },
                    ),
                    NumberButton(
                      nomer: 5,
                      bizBergenFunksiya: (nomer) {
                        print('bizBergenFunksiya $nomer');
                      },
                    ),
                    NumberButton(
                      nomer: 6,
                      bizBergenFunksiya: (s) {
                        print('bizBergenFunksiya $s');
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NumberButton(
                      nomer: 7,
                      bizBergenFunksiya: (v) {
                        print('bizBergenFunksiya $v');
                      },
                    ),
                    NumberButton(
                      nomer: 8,
                      bizBergenFunksiya: (c) {
                        print('bizBergenFunksiya $c');
                      },
                    ),
                    NumberButton(
                      nomer: 9,
                      bizBergenFunksiya: (w) {
                        print('bizBergenFunksiya $w');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  const NumberButton({
    Key? key,
    required this.nomer,
    required this.bizBergenFunksiya,
  }) : super(key: key);

  final int nomer;
  final void Function(int) bizBergenFunksiya;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        bizBergenFunksiya(nomer - 10);
      },
      child: Text('$nomer'),
    );
  }
}
