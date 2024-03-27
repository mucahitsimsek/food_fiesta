import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/utility/validators/auth_validators.dart';
import 'package:food_fiesta/product/widget/text_field/app_text_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    required this.passwordFormKey,
    super.key,
  });

  final GlobalKey<FormState> passwordFormKey;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return AppTextField(
      formKey: widget.passwordFormKey,
      hintText: LocaleKeys.signIn_password.tr(),
      obscureText: true,
      validator: AuthValidators.passwordValidator,
    );
  }
}
