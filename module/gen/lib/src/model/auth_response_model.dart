// ignore_for_file: public_member_api_docs

import 'package:gen/src/model/index.dart';
import 'package:vexana/vexana.dart';

// part 'auth_response_model.g.dart';

/// [AuthResponseModel] is a model class that is
/// used to parse the response
final class AuthResponseModel<T> {
  /// [AuthResponseModel] is a model class that
  /// is used to parse the response
  AuthResponseModel({
    this.requestCallback,
  });

  factory AuthResponseModel.empty() => AuthResponseModel<T>();

  T? data;

  AuthErrorModel? error;

  /// [AuthResponseModel] is a model class that is used to
  /// parse the response
  Future<IResponseModel<T?, AuthErrorModel?>> Function()? requestCallback;

  Future<AuthResponseModel<T>> response() async {
    final authResponse = this;
    if (requestCallback == null) {
      authResponse.error = AuthErrorModel(
        error: Error(
          code: 501,
          message: 'Response is null',
        ),
      );
      return authResponse;
    }
    final myResponse = await requestCallback?.call().then((value) {
      data = value.data;
      error = value.error?.model;
      return value;
    });

    if (myResponse == null) {
      authResponse.error = AuthErrorModel(
        error: Error(
          code: 501,
          message: 'Response is null',
        ),
      );
      return authResponse;
    }

    if (myResponse.data != null) {
      data = myResponse.data;
      authResponse.data = myResponse.data;
    } else {
      error = myResponse.error?.model;
      authResponse.error = myResponse.error?.model;
    }
    return authResponse;
  }
}
