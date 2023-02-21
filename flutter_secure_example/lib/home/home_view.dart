import 'package:flutter/material.dart';
import 'package:flutter_secure_example/service/auth_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () async {
                await secureStorage.containsKey(authKey);
              },
              child: const Text('Contains AuthKey'),
            ),
            ElevatedButton(
              onPressed: () async {
                await secureStorage.delete(authKey);
              },
              child: const Text('Delete AuthKey'),
            ),
            ElevatedButton(
              onPressed: () async {
                await secureStorage.deleteAll();
              },
              child: const Text('Delete All'),
            ),
            ElevatedButton(
              onPressed: () async {
                await secureStorage.read(authKey);
              },
              child: const Text('Read AuthKey'),
            ),
            ElevatedButton(
              onPressed: () async {
                await secureStorage.readAll();
              },
              child: const Text('Read All'),
            ),
            ElevatedButton(
              onPressed: () async {
                await secureStorage.write(_someKey, 'Eldi');
              },
              child: const Text('Write Eldi to SomeKey'),
            ),
          ],
        ),
      ),
    );
  }
}

const _someKey = 'some-key';
