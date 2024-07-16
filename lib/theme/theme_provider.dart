import 'package:flutter/material.dart';
import 'package:noteproject/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData =
        themeData; //Bu fonksiyonun amacı notify ı dinleyerek tüm uygulamada _themeDatayı themeDataya eşitlemektir.
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
      ;
    }
  }
}
