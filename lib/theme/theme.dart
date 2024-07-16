import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteproject/theme/customColorSheme.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: CustomColorScheme.light(
    customColor: Colors.blue, // Buraya kendi renginizi ekleyin
  ),
  textTheme: GoogleFonts.nunitoTextTheme(
    TextTheme(
      bodyLarge: const TextStyle(color: Colors.black),
      bodyMedium: const TextStyle(color: Colors.black87),
      labelLarge: TextStyle(color: Colors.grey.shade800),
      headlineLarge: TextStyle(color: Colors.pink.shade500),
    ),
  ),
  buttonTheme: ButtonThemeData(
    colorScheme: ColorScheme.light(
      background: Colors.pink.shade400,
    ),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: CustomColorScheme.dark(
    customColor: Colors.blue, // Buraya kendi renginizi ekleyin
  ),
  textTheme: GoogleFonts.nunitoTextTheme(
    TextTheme(
      bodyLarge: const TextStyle(color: Colors.white),
      bodyMedium: const TextStyle(color: Colors.white70),
      labelLarge: TextStyle(color: Colors.grey.shade200),
      headlineLarge: TextStyle(color: Colors.pink.shade400),
    ),
  ),
  buttonTheme: ButtonThemeData(
    colorScheme: ColorScheme.dark(
      background: Colors.pink.shade400,
    ),
  ),
);
