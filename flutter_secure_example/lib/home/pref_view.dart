import 'package:flutter/material.dart';

import '../service/log_service.dart';
import '../storage/preferences_storage.dart';

class PreferencesStorageWidget extends StatelessWidget {
  const PreferencesStorageWidget({super.key, required this.storage});

  final PreferencesStorage storage;

  static const _key = 'preferences-storage';
  static const mockKey = 'mock-key';
  static const mockValue = 'mock-value';
  static const mockBoolValue = true;
  static const mockDoubleValue = 0.7;
  static const mockIntValue = 7;
  static const mockListStringValue = ['a', 'b', 'c'];
  static final mockException = Exception('oops');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          ElevatedButton(
            onPressed: () async {
              final value = await storage.read(key: _key);
              Log.d('read:\n\tkey; $_key\n\tvalue: $value');
            },
            child: const Text('Read Async String'),
          ),
          ElevatedButton(
            onPressed: () {
              final value = storage.readString(key: _key);
              Log.d('read:\n\tkey; $_key\n\tvalue: $value');
            },
            child: const Text('Read String'),
          ),
          ElevatedButton(
            onPressed: () {
              final value = storage.readBool(key: _key);
              Log.d('read:\n\tkey; $_key\n\tvalue: $value');
            },
            child: const Text('Read Bool'),
          ),
          ElevatedButton(
            onPressed: () {
              final value = storage.readDouble(key: _key);
              Log.d('read:\n\tkey; $_key\n\tvalue: $value');
            },
            child: const Text('Read Double'),
          ),
          ElevatedButton(
            onPressed: () {
              final value = storage.readInt(key: _key);
              Log.d('read:\n\tkey; $_key\n\tvalue: $value');
            },
            child: const Text('Read Int'),
          ),
          ElevatedButton(
            onPressed: () {
              final value = storage.readStringList(key: _key);
              Log.d('read:\n\tkey; $_key\n\tvalue: $value');
            },
            child: const Text('Read String List'),
          ),
          ElevatedButton(
            onPressed: () async {
              await storage.writeString(key: _key, value: 'Eldi');
            },
            child: const Text('Write String'),
          ),
          ElevatedButton(
            onPressed: () async {
              await storage.writeBool(key: _key, value: mockBoolValue);
            },
            child: const Text('Write Bool'),
          ),
          ElevatedButton(
            onPressed: () async {
              await storage.writeDouble(key: _key, value: mockDoubleValue);
            },
            child: const Text('Write Double'),
          ),
          ElevatedButton(
            onPressed: () async {
              await storage.writeInt(key: _key, value: mockIntValue);
            },
            child: const Text('Write Int'),
          ),
          ElevatedButton(
            onPressed: () async {
              await storage.writeStringList(key: _key, value: mockListStringValue);
            },
            child: const Text('Write List String'),
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
