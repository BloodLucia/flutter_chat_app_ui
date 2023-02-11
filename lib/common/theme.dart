import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData light = ThemeData.light();

  static ThemeData dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xff1B202D),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
  );
}
