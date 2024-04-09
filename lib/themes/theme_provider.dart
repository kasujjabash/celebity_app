import 'package:cafe/themes/dark_mode.dart';
import 'package:cafe/themes/light_mode.dart';
import 'package:flutter/material.dart';

// This is usefull to switch between modes,
class ThemeProvider with ChangeNotifier {
  //choose the mode, themedate light mode
  ThemeData _themeData = lightMode;
  //getter methode
  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;
  // setter
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // toogle between themes
  void toogleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
