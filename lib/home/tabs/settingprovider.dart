import 'package:flutter/material.dart';

class settingProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  chnageThemeMode(ThemeMode newthemeMode) {
    if (newthemeMode == ThemeMode) {
      return;
    }
    themeMode = newthemeMode;
    notifyListeners();
  }
}
