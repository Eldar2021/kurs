import 'package:flutter/material.dart';
import 'package:life_cyle/pages/sign_in.dart';
import 'package:life_cyle/service/user_state.dart';

import 'home_page.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final _nameCtl = TextEditingController();
  final _lastNameCtl = TextEditingController();
  final _passwordCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('Register'),
          TextFormField(controller: _nameCtl),
          TextFormField(controller: _lastNameCtl),
          TextFormField(controller: _passwordCtl),
          ElevatedButton(
            onPressed: () async {
              await service.signUp(
                name: _nameCtl.text,
                lastName: _lastNameCtl.text,
                password: _passwordCtl.text,
              );
              // ignore: use_build_context_synchronously
              await Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                (route) => false,
              );
            },
            child: const Text('Register'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
              );
            },
            child: const Text('signin'),
          )
        ],
      ),
    );
  }
}
