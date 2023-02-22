import 'package:flutter/material.dart';
import 'package:flutter_secure_example/home/pref_view.dart';
import 'package:flutter_secure_example/home/secure_view.dart';
import 'package:flutter_secure_example/storage/preferences_storage.dart';
import 'package:flutter_secure_example/storage/secure_storage.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.secureStorage,
    required this.preferencesStorage,
  });

  final SecureStorage secureStorage;
  final PreferencesStorage preferencesStorage;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            tabs: <Widget>[Tab(text: 'SecureStorage'), Tab(text: 'PreferencesStorage')],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SecureStorageWidget(storage: secureStorage),
            PreferencesStorageWidget(storage: preferencesStorage),
          ],
        ),
      ),
    );
  }
}
