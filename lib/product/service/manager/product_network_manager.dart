import 'dart:io';

import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

/// ProductServiceManager is a network manager class for product
final class ProductNetworkManager extends NetworkManager<EmptyModel> {
  /// [super.options] is a required parameter
  ProductNetworkManager.base()
      : super(
          options: BaseOptions(
            baseUrl: AppEnvironmentItems.baseUrl.value,
          ),
        );

  ///Error handling
  void listenErrorState({required ValueChanged<int> onValueChanged}) {
    interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          onValueChanged(error.response?.statusCode ?? HttpStatus.notFound);
          return handler.next(error);
        },
      ),
    );
  }
}
