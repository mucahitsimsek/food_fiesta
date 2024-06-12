import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/theme/custom_theme.dart';

/// Custom Dark Theme
final class CustomDarkTheme implements CustomTheme {
  /// Dark theme for the app.
  @override
  // change to initialize ThemeData instead of computed
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();

  @override
  ElevatedButtonThemeData get elevatedButtonThemeData => const ElevatedButtonThemeData();

  @override
  TextTheme get textTheme => const TextTheme();

  @override
  InputDecorationTheme get inputDecorationTheme => const InputDecorationTheme();

  @override
  TextButtonThemeData get textButtonThemeData => throw UnimplementedError();
}
