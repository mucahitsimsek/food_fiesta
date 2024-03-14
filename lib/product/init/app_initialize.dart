import 'dart:async';

import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:architecture_template/product/state/container/product_state_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

///Project initialize class for operation and configuration
final class AppInitialize {
  ///Project first basic required initialize
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e(error.toString());
    });
  }

  ///Project initialize class for operation and configuration
  Future<void> _initialize() async {
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    await DeviceUtility.instance.initPackageInfo();

    FlutterError.onError = (FlutterErrorDetails details) {
      Logger().e(details.exceptionAsString());
    };

    //Dependency Injection
    //Envied

    AppEnvironment.general();

    /// Is must be after call AppEnvironment.general()
    ProductStateContainer.setup();
  }
}
