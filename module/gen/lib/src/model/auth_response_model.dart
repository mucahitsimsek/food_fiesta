import 'dart:developer';

import 'package:gen/src/model/index.dart';
import 'package:vexana/vexana.dart';

// part 'auth_response_model.g.dart';

/// [AuthResponseModel] is a model class that is
/// used to parse the response
final class AuthResponseModel<T> {
  /// [AuthResponseModel] is a model class that
  /// is used to parse the response
  AuthResponseModel({
    required this.requestCallback,
  });

  T? data;

  AuthErrorModel? error;

  /// [AuthResponseModel] is a model class that is used to
  /// parse the response
  Future<IResponseModel<T?, AuthErrorModel?>> requestCallback;

  Future<void> then() async {
    final myResponse = await requestCallback;
    if (myResponse.data != null) {
      data = myResponse.data;
    } else {
      log('Error: ${myResponse.error?.description}');
      log('Error: ${myResponse.error?.model}');
    }

    log('Data: $data');
    log('Error: $error');
  }
}
