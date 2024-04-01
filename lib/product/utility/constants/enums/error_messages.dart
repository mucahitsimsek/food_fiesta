import 'package:food_fiesta/product/init/language/locale_keys.g.dart';

enum ErrorMessages {
  invalidEmail(LocaleKeys.signIn_error_invalidEmail),
  invalidPassword(LocaleKeys.signIn_error_password),
  invalidName(LocaleKeys.signIn_error_name),
  userNotFound(LocaleKeys.signIn_error_userNotFound),
  emailAlreadyExists(LocaleKeys.signIn_error_emailAlreadyInUse),
  weakPassword(LocaleKeys.signIn_error_weakPassword),
  unknownError(LocaleKeys.signIn_error_unknown),
  tooManyRequest(LocaleKeys.signIn_error_tooManyRequests),
  invalidLoginCredentials(LocaleKeys.signIn_error_invalidLoginCredentials),
  ;

  const ErrorMessages(this.value);

  final String value;
}
