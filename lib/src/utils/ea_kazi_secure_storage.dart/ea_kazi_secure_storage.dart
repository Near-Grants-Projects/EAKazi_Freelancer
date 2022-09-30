import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class EaKaziSecureStorage {
  static late final FlutterSecureStorage _secureStorage;

  static FlutterSecureStorage init() {
    _secureStorage = const FlutterSecureStorage();
    return _secureStorage;
  }

  static FlutterSecureStorage get instance => _secureStorage;

  Future<String?> read({required String key}) async {
    final String? value = await _secureStorage.read(key: key);
    return value;
  }

  Future write({required String key, String? value}) async {
    await _secureStorage.write(key: key, value: value);
  }
}
