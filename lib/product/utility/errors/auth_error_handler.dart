import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/utility/constants/enums/error_messages.dart';
import 'package:food_fiesta/product/utility/snackbar/custom_snackbar.dart';

@immutable
final class AuthErrorHandler {
  const AuthErrorHandler._init();

  static void handleAuthError(String? error) {
    if (error == null) return;
    CustomSnackbar.showSnackbar(
      title: _getErrorMessage(error),
    );
  }

  static String _getErrorMessage(String error) => error
      .replaceAll(
        'TOO_MANY_ATTEMPTS_TRY_LATER',
        ErrorMessages.tooManyRequest.value.tr(),
      )
      .replaceAll(
        'INVALID_LOGIN_CREDENTIALS',
        ErrorMessages.invalidLoginCredentials.value.tr(),
      )
      .replaceAll(
        'EMAIL_EXISTS',
        ErrorMessages.emailAlreadyExists.value.tr(),
      )
      .replaceAll(
        'OPERATION_NOT_ALLOWED',
        ErrorMessages.unknownError.value.tr(),
      )
      .replaceAll(
        'EMAIL_NOT_FOUND',
        ErrorMessages.userNotFound.value.tr(),
      )
      .replaceAll(
        'INVALID_PASSWORD',
        ErrorMessages.invalidPassword.value.tr(),
      )
      .replaceAll(
        'USER_DISABLED',
        ErrorMessages.unknownError.value.tr(),
      );
}
