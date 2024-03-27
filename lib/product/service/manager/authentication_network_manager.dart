import 'dart:io';

import 'package:food_fiesta/product/init/config/app_environment.dart';
import 'package:vexana/vexana.dart';

/// ProductServiceManager is a network manager class for product
final class AuthenticationNetworkManager extends NetworkManager<EmptyModel> {
  /// [super.options] is a required parameter
  AuthenticationNetworkManager.auth()
      : super(
          options: BaseOptions(
            baseUrl: AppEnvironmentItems.authUrl.value,
            validateStatus: (status) {
              if (status == HttpStatus.unauthorized) {
                return false;
              } else if (status == HttpStatus.ok) {
                return true;
              } else {
                return false;
              }
            },
          ),
        );
}
