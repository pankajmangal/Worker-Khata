import 'package:flutter/material.dart';

import '../data/local/storage_key.dart';
import '../data/local/worker_secure_storage.dart';
import '../utils/appUtils.dart';

class AppLanguage extends ChangeNotifier {
  Locale _appLocale = const Locale('en');

  Locale get appLocal => _appLocale;
  fetchLocale() async {
    var langCode = await SecureStorage().readSecureData(localKey);
    if (langCode == "") {
      _appLocale = const Locale('en');
      AppUtils.langCode = "en";
      return Null;
    }
    _appLocale = Locale(langCode);
    AppUtils.langCode = langCode;
    return Null;
  }


  void changeLanguage(Locale type) async {

    if (_appLocale == type) {
      return;
    }
    if (type == const Locale("hi")) {
      _appLocale = const Locale("hi");
      AppUtils.langCode = "hi";
      SecureStorage().writeSecureData(localKey, 'hi');
      SecureStorage().writeSecureData(countryCodeKey, '');
    } else {
      _appLocale = const Locale("en");
      AppUtils.langCode = "en";
      SecureStorage().writeSecureData(localKey, 'en');
      SecureStorage().writeSecureData(countryCodeKey, 'US');
    }
    notifyListeners();
  }
}