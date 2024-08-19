import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        surfaceTintColor: Colors.white,
        elevation: 2,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,

      ),
      colorScheme: _lightColorScheme(context),
      textTheme: _textTheme(context),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.black,
        shadowColor: Colors.white.withOpacity(0.1),
        elevation: 2,
      ),
      colorScheme: _darkColorScheme(context),
      textTheme: _textTheme(context),
    );
  }

  static ColorScheme _lightColorScheme(BuildContext context) {
    return const ColorScheme.light().copyWith(
      primary: Colors.white,
      secondary: Colors.black,
    );
  }

  static ColorScheme _darkColorScheme(BuildContext context) {
    return const ColorScheme.dark().copyWith(
      primary: Colors.black,
      secondary: Colors.white,
    );
  }

  static TextTheme _textTheme(BuildContext context) {
    return TextTheme();
  }
}
