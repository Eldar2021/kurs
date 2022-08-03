import 'package:flutter/material.dart';
import 'package:sabak10_f7/home_page.dart';

/// tapshyrma Login UI kozdoo 

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String login = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (log) {
                login = log;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Логин',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (pas) {
                password = pas;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Пароль',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (login == 'eagle' && password == 'kurs8') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Логиниңиз же паролуңуз туура эмес! Сураныч кайрадан жазыңыз.',
                    ),
                  ),
                );
              }
            },
            child: const Text('Кирүү'),
          ),
        ],
      ),
    );
  }
}
