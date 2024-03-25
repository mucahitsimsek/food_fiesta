import 'package:architecture_template/product/init/theme/custom_theme.dart';
import 'package:architecture_template/product/utility/constants/enums/app_values.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

/// Custom Light Theme
final class CustomLightTheme implements CustomTheme {
  /// Light theme for the app.
  //change to initialize ThemeData instead of computed
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        // colorScheme: CustomColorScheme.lightColorScheme,
        fontFamily: Assets.fonts.sfproBold,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        elevatedButtonTheme: elevatedButtonThemeData,
        textTheme: textTheme,
        inputDecorationTheme: inputDecorationTheme,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            // backgroundColor: MaterialStateProperty.all(ColorName.accentColor),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                horizontal: AppValues.small.value,
                vertical: AppValues.extraSmall.value,
              ),
            ),

            overlayColor: MaterialStatePropertyAll(
              ColorName.activeColorOne.withOpacity(0.1),
            ),
            visualDensity: VisualDensity.comfortable,
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      );

  @override
  ElevatedButtonThemeData get elevatedButtonThemeData => ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            ColorName.activeColorOne,
          ),
          elevation: MaterialStateProperty.all<double>(0),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppValues.smallBig.value,
              ),
            ),
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              color: ColorName.backgroundColor,
              fontSize: AppValues.medium.value,
              // backgroundColor: ColorName.activeColorOne,
              decoration: TextDecoration.none,
              fontFamily: Assets.fonts.sfproBold,
            ),
          ),
        ),
      );

  @override
  TextTheme get textTheme => const TextTheme();

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();

  @override
  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorName.bodyText.withOpacity(0.1),
          ),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorName.bodyText.withOpacity(0.1),
          ),
        ),
        outlineBorder: BorderSide(
          color: ColorName.bodyText.withOpacity(0.1),
          style: BorderStyle.none,
          width: AppValues.extraSmall.value,
        ),
        hintStyle: const TextStyle(
          color: ColorName.bodyText,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorName.mainColorBlack,
          ),
        ),
        fillColor: ColorName.activeColorOne.withOpacity(0.1),
        focusColor: ColorName.mainColorBlack,
      );
}
