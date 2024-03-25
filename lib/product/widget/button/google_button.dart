import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/utility/constants/enums/app_values.dart';
import 'package:food_fiesta/product/widget/button/app_button.dart';
import 'package:food_fiesta/product/widget/padding/app_padding.dart';
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
