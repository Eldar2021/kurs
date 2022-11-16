import 'package:flutter/material.dart';

class TryCatchPage extends StatefulWidget {
  const TryCatchPage({super.key});

  @override
  State<TryCatchPage> createState() => _TryCatchPageState();
}

class _TryCatchPageState extends State<TryCatchPage> {
  final birinchi = TextEditingController();
  final ekinchi = TextEditingController();
  double summa = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TryCatchPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '$summa',
            style: const TextStyle(fontSize: 36),
          ),
          TextFormField(controller: birinchi),
          TextFormField(controller: ekinchi),
          ElevatedButton(
            onPressed: () {
              try {
                summa = double.parse(birinchi.text) + double.parse(ekinchi.text);
                setState(() {});
              } catch (e) {
                showAboutDialog(context: context, applicationName: 'menimche siz san jazbadynyz');
                // print('bizdin kata $e, menimche siz san jazbadynyz');
              }
            },
            child: const Text('+'),
          ),
        ],
      ),
    );
  }
}
