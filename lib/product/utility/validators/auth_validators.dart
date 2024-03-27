import 'package:kartal/kartal.dart';

final class AuthValidators {
  static String? emailValidator(String? value) {
    if (value!.ext.isNullOrEmpty) {
      return 'Email is required';
    } else if (!value.ext.isValidEmail) {
      return 'Email is not valid';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value!.ext.isNullOrEmpty) {
      return 'Password is required';
    } else if (!value.ext.isValidPassword) {
      return 'Password is not valid';
    }
    return null;
  }
}
