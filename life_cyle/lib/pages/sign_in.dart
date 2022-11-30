import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:life_cyle/pages/sign_up.dart';
import 'package:life_cyle/service/user_state.dart';

import 'home_page.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final _nameCtl = TextEditingController();
  final _passwordCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignIn'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('SignIn'),
          TextFormField(controller: _nameCtl),
          TextFormField(controller: _passwordCtl),
          ElevatedButton(
            onPressed: () async {
              final isTrue = await service.signIn(
                name: _nameCtl.text,
                password: _passwordCtl.text,
              );
              if (isTrue) {
                // ignore: use_build_context_synchronously
                await Navigator.pushAndRemoveUntil<void>(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                  (route) => false,
                );
              } else {
                log('login je password tuura emes');
              }
            },
            child: const Text('SignIn'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUp(),
                ),
              );
            },
            child: const Text('Sign Up'),
          )
        ],
      ),
    );
  }
}
