import 'package:flutter/material.dart';

/// Custom theme for the app
abstract class CustomTheme {
  /// Light theme for the app.
  ThemeData get themeData;

  ///FloatingActionButton [ThemeData] for the app.
  FloatingActionButtonThemeData get floatingActionButtonThemeData;

  ///ElevatedButton [ThemeData] for the app.
  ElevatedButtonThemeData get elevatedButtonThemeData;

  ///TextStyle [ThemeData] for the app.
  TextTheme get textTheme;

  ///InputDecoration [ThemeData] for the app.
  InputDecorationTheme get inputDecorationTheme;

  ///TextButton [ThemeData] for the app.
  TextButtonThemeData get textButtonThemeData;
}
