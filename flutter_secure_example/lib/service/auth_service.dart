import 'package:flutter_secure_example/service/log_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  const SecureStorage(this.storage);

  final FlutterSecureStorage storage;

  Future<void> write(String key, String value) async {
    Log.d('write:\n\tkey: $key\n\tvalue: $value');
    await storage.write(key: key, value: value);
  }

  Future<void> deleteAll() async {
    Log.d('deleteAll');
    await storage.deleteAll();
  }

  Future<void> delete(String key) async {
    Log.d('delete:\n\tkey: $key');
    await storage.delete(key: key);
  }

  Future<String?> read(String key) async {
    final value = await storage.read(key: key);
    Log.d('read:\n\tkey; $key\n\tvalue: $value');
    return value;
  }

  Future<Map<String, String>> readAll() async {
    final value = await storage.readAll();
    value.forEach((key, value) {
      Log.d('readAll:\n\tkey: $key\n\tvalue: $value');
    });
    return value;
  }

  Future<bool> containsKey(String key) async {
    final value = await storage.containsKey(key: key);
    Log.d('containsKey:\n\tkey: $key\n\tvalue: $value');
    return value;
  }
}

const secureStorage = SecureStorage(
  FlutterSecureStorage(aOptions: AndroidOptions(encryptedSharedPreferences: true)),
);

const authKey = 'auth-key';
