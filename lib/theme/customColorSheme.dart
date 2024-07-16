import 'package:flutter/material.dart';

class CustomColorScheme extends ColorScheme {
  final Color customColor;

  const CustomColorScheme({
    required this.customColor,
    required Brightness brightness,
    required Color primary,
    required Color onPrimary,
    required Color secondary,
    required Color onSecondary,
    required Color error,
    required Color onError,
    required Color background,
    required Color onBackground,
    required Color surface,
    required Color onSurface,
  }) : super(
          brightness: brightness,
          primary: primary,
          onPrimary: onPrimary,
          secondary: secondary,
          onSecondary: onSecondary,
          error: error,
          onError: onError,
          background: background,
          onBackground: onBackground,
          surface: surface,
          onSurface: onSurface,
        );

  CustomColorScheme.light({
    required Color customColor,
  }) : this(
          customColor: customColor,
          brightness: Brightness.light,
          primary: Colors.pink.shade50,
          onPrimary: Colors.black,
          secondary: Color.fromARGB(255, 163, 80, 109),
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.pink,
          onSurface: Colors.black,
        );

  CustomColorScheme.dark({
    required Color customColor,
  }) : this(
          customColor: customColor,
          brightness: Brightness.dark,
          primary: Colors.grey.shade800,
          onPrimary: Colors.white,
          secondary: Colors.grey.shade700,
          onSecondary: Colors.white,
          error: Colors.red.shade700,
          onError: Colors.black,
          background: Colors.grey.shade900,
          onBackground: Colors.white,
          surface: Colors.grey.shade900,
          onSurface: Colors.white,
        );
}
