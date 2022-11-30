import 'package:flutter/material.dart';
import 'package:life_cyle/pages/home_page.dart';
import 'package:life_cyle/pages/sign_up.dart';

class MyRoutes {
  static const init = '/';
  static const home = '/home';
  static const register = '/register';

  static Route? onGenerateRoute(RouteSettings settings, bool isRegister) {
    switch (settings.name) {
      case init:
        return MaterialPageRoute(
          builder: (_) => isRegister ? const HomePage() : SignUp(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case register:
        return MaterialPageRoute(
          builder: (_) => SignUp(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => SignUp(),
        );
    }
  }
}
