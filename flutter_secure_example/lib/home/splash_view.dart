import 'package:flutter/material.dart';
import 'package:flutter_secure_example/home/home_view.dart';
import 'package:flutter_secure_example/home/login_view.dart';
import 'package:flutter_secure_example/service/auth_service.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    checkUser();
  }

  Future<void> checkUser() async {
    final token = await secureStorage.read(authKey);
    if (token != null && context.mounted) {
      Navigator.pushAndRemoveUntil<void>(
        context,
        MaterialPageRoute<void>(builder: (BuildContext context) => const HomeView()),
        ModalRoute.withName('/'),
      );
    } else {
      Navigator.pushAndRemoveUntil<void>(
        context,
        MaterialPageRoute<void>(builder: (BuildContext context) => const LoginView()),
        ModalRoute.withName('/'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SplashView')),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
