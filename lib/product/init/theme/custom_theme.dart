import 'package:flutter/material.dart';

/// Custom theme for the app
abstract class CustomTheme {
  /// Light theme for the app.
  ThemeData get themeData;

  ///FloatingActionButton [ThemeData] for the app.
  FloatingActionButtonThemeData get floatingActionButtonThemeData;
}
