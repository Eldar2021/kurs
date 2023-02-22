import 'package:flutter/material.dart';

import '../service/log_service.dart';
import '../storage/preferences_storage.dart';

class PreferencesStorageWidget extends StatelessWidget {
  const PreferencesStorageWidget({super.key, required this.storage});

  final PreferencesStorage storage;

  static const _key = 'preferences-storage';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              final value = storage.read(key: _key);
              Log.d('read:\n\tkey; $_key\n\tvalue: $value');
            },
            child: const Text('Read'),
          ),
          ElevatedButton(
            onPressed: () async {
              await storage.write(key: _key, value: 'Eldi');
            },
            child: const Text('Write'),
          ),
          ElevatedButton(
            onPressed: () async {
              await storage.delete(key: _key);
            },
            child: const Text('Delete'),
          ),
          ElevatedButton(
            onPressed: () async {
              await storage.clear();
            },
            child: const Text('Clear'),
          ),
        ],
      ),
    );
  }
}
