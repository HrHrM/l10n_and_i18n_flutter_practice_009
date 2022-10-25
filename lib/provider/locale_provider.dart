import 'package:flutter/material.dart';
import 'package:test_i18n/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale = const Locale('es');

  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }

  // void clearLocale() {
  //   _locale = null;
  //   notifyListeners();
  // }
}
