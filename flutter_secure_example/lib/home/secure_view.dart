import 'package:flutter/material.dart';
import 'package:flutter_secure_example/storage/secure_storage.dart';

import '../service/log_service.dart';

class SecureStorageWidget extends StatelessWidget {
  const SecureStorageWidget({super.key, required this.storage});

  final SecureStorage storage;

  static const _key = 'secure-storage';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () async {
              final value = await storage.read(key: _key);
              Log.d('read:\n\tkey; $_key\n\tvalue: $value');
            },
            child: const Text('Read'),
          ),
          ElevatedButton(
            onPressed: () async {
              await storage.writeString(key: _key, value: 'Eldi');
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
