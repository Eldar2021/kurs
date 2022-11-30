import 'package:life_cyle/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserStateService {
  static const String _nameKey = 'name-key';
  static const String _lastNameKey = 'last-name-key';
  static const String _passwordKey = 'password-key';
  static const String _isRegisteredKey = 'registered-key';

  Future<bool> isRegistered() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(_isRegisteredKey) ?? false;
  }

  Future<void> signUp({
    required String name,
    required String lastName,
    required String password,
  }) async {
    final pref = await SharedPreferences.getInstance();

    await pref.setString(_nameKey, name);
    await pref.setString(_lastNameKey, lastName);
    await pref.setString(_passwordKey, password);
    await pref.setBool(_isRegisteredKey, true);
  }

  Future<bool> signIn({
    required String name,
    required String password,
  }) async {
    final pref = await SharedPreferences.getInstance();

    final cachedName = pref.getString(_nameKey);
    final cachedPassword = pref.getString(_passwordKey);

    if (name == cachedName && password == cachedPassword) {
      await pref.setBool(_isRegisteredKey, true);
      return true;
    } else {
      return false;
    }
  }

  Future<void> signOut() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(_isRegisteredKey);
  }

  Future<void> delete() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(_isRegisteredKey);
    await pref.remove(_nameKey);
    await pref.remove(_lastNameKey);
    await pref.remove(_passwordKey);
  }

  Future<User?> getUser() async {
    final pref = await SharedPreferences.getInstance();

    final cachedName = pref.getString(_nameKey);
    final cachedLastName = pref.getString(_lastNameKey);
    final cachedPassword = pref.getString(_passwordKey);

    if (cachedName != null && cachedPassword != null && cachedLastName != null) {
      return User(
        id: '1',
        name: cachedName,
        lastName: cachedLastName,
        password: cachedPassword,
      );
    } else {
      return null;
    }
  }
}

final service = UserStateService();
