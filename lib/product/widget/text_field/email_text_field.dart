import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/utility/validators/auth_validators.dart';
import 'package:food_fiesta/product/widget/text_field/app_text_field.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({
    required this.formKey,
    super.key,
  });
  final GlobalKey<FormState> formKey;
  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  final ValueNotifier<bool> _isVisibleDone = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isVisibleDone,
      builder: (context, visible, child) => AppTextField(
        formKey: widget.formKey,
        hintText: LocaleKeys.signIn_email.tr(),
        validator: (value) {
          _isVisibleDone.value = false;
          final validate = AuthValidators.emailValidator(value);
          if (validate == null) {
            _isVisibleDone.value = true;
          }
          return validate;
        },
        suffixIcon: Assets.icons.doneIcon
            .svg(
              colorFilter: const ColorFilter.mode(
                ColorName.yellow,
                BlendMode.srcIn,
              ),
            )
            .ext
            .toVisible(
              value: visible,
            ),
      ),
    );
  }
}
