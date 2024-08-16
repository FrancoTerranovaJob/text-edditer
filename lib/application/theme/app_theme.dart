import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _lightColorScheme(context),
      textTheme: _textTheme(context),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _darkColorScheme(context),
      textTheme: _textTheme(context),
    );
  }

  static ColorScheme _lightColorScheme(BuildContext context) {
    return const ColorScheme.light().copyWith(
      primary: Colors.white,
    );
  }

  static ColorScheme _darkColorScheme(BuildContext context) {
    return const ColorScheme.dark().copyWith(
      primary: Colors.black,
    );
  }

  static TextTheme _textTheme(BuildContext context) {
    return TextTheme();
  }
}
