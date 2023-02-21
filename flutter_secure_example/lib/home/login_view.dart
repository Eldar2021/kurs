import 'package:flutter/material.dart';
import 'package:flutter_secure_example/service/auth_service.dart';

import 'home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final pin = TextEditingController();

  Future<void> createUser() async {
    if (pin.text.isNotEmpty) {
      await secureStorage.write(authKey, pin.text);
      Navigator.pushAndRemoveUntil<void>(
        context,
        MaterialPageRoute<void>(builder: (BuildContext context) => const HomeView()),
        ModalRoute.withName('/'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormField(controller: pin),
          ElevatedButton(
            onPressed: createUser,
            child: const Text('Sign In'),
          )
        ],
      ),
    );
  }
}
