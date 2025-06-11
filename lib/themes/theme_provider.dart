import 'package:flutter/material.dart';
import 'package:food/themes/dark_mode.dart';
import 'package:food/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themedata => _themeData;
  bool get isDarkMode => _themeData == darkMode;

  set themedata(ThemeData themedata) {
    _themeData = themedata;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == themedata) {
      themedata = darkMode;
    } else {
      themedata = lightMode;
    }
  }
}
