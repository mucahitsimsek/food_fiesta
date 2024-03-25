// ignore_for_file: public_member_api_docs

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fiesta/product/init/app_initialize.dart';
import 'package:food_fiesta/product/init/product_localization.dart';
import 'package:food_fiesta/product/init/state_initialize.dart';
import 'package:food_fiesta/product/init/theme/custom_dark_theme.dart';
import 'package:food_fiesta/product/init/theme/custom_light_theme.dart';
import 'package:food_fiesta/product/navigation/app_router.dart';
import 'package:food_fiesta/product/state/view_model/product_viev_model.dart';

void main() async {
  await AppInitialize().make();
  runApp(
    StateInitialize(
      child: ProductLocalization(
        child: const _MyApp(),
      ),
    ),
  );
}

final class _MyApp extends StatelessWidget {
  const _MyApp();

  static final _appRotuer = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRotuer.config(),
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: context.watch<ProductViewModel>().state.themeMode,
    );
  }
}
