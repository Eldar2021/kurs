import 'package:flutter/material.dart';
import 'package:flutter_secure_example/home/home_view.dart';
import 'package:flutter_secure_example/storage/preferences_storage.dart';
import 'package:flutter_secure_example/storage/secure_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const secureStorage = SecureStorage();
  final preferencesStorage = await PreferencesStorage.getInstance();
  runApp(MyApp(
    secureStorage: secureStorage,
    preferencesStorage: preferencesStorage,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.secureStorage,
    required this.preferencesStorage,
  });

  final SecureStorage secureStorage;
  final PreferencesStorage preferencesStorage;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeView(
        secureStorage: secureStorage,
        preferencesStorage: preferencesStorage,
      ),
    );
  }
}
