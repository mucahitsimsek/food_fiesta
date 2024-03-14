import 'dart:io';

import 'package:flutter/material.dart';

/// ProductNetworkErrorManager is a network error manager class for product
class ProductNetworkErrorManager {
  /// [BuildContext] is a required parameter
  ProductNetworkErrorManager(this.context);

  /// [BuildContext] is a required parameter
  BuildContext context;

  ///Error handling
  void handleError(int status) {
    if (status == HttpStatus.unauthorized) {}
  }
}
