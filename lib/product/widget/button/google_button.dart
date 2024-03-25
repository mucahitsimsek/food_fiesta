import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/utility/constants/enums/app_values.dart';
import 'package:architecture_template/product/widget/button/app_button.dart';
import 'package:architecture_template/product/widget/padding/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: LocaleKeys.signIn_button_google,
      onPressed: onPressed,
      color: ColorName.google,
      leftWidget: Padding(
        padding: AppPadding.only(
          top: AppValues.small.value + 1,
          left: AppValues.normal.value,
        ),
        child: Assets.icons.googleIcon.svg(),
      ),
    );
  }
}
