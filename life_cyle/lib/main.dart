import 'package:flutter/material.dart';
import 'package:life_cyle/app/app.dart';
import 'package:life_cyle/service/user_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isRegistered = await service.isRegistered();
  runApp(MyApp(isRegistered));
}
