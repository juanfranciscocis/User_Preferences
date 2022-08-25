

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData;

  ThemeProvider({
    required bool isDarkMode,
  }): _themeData = isDarkMode ? ThemeData.dark() : ThemeData.light();

  //setLightMode
  void setLightMode() {
    _themeData = ThemeData.light();
    notifyListeners();
  }

  //setDarkMode
  void setDarkMode() {
    _themeData = ThemeData.dark();
    notifyListeners();
  }

  //getTheme
  ThemeData getTheme() => _themeData;
}