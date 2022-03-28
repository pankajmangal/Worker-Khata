import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const _storage = FlutterSecureStorage();

  Future<Map<String, String>> _readAll() async {
    var map = <String, String>{};
    try {
      map = await _storage.readAll(
        iOptions: _getIOSOptions(),
        aOptions: _getAndroidOptions(),
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return map;
  }

  Future<void> deleteAll() async {
    try {
      await _storage.deleteAll(
        iOptions: _getIOSOptions(),
        aOptions: _getAndroidOptions(),
      );
      // _readAll();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<String> readSecureData(String key) async {
    String value = "";
    try {
      value = (await _storage.read(key: key)) ?? "";
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return value;
  }

  Future<void> deleteSecureData(String key) async {
    try {
      await _storage.delete(key: key);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> writeSecureData(String key, String value) async {
    try {
      await _storage.write(
        key: key,
        value: value,
        iOptions: _getIOSOptions(),
        aOptions: _getAndroidOptions(),
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  IOSOptions _getIOSOptions() => const IOSOptions(
    accessibility: IOSAccessibility.first_unlock,
  );

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
    encryptedSharedPreferences: true,
  );
}