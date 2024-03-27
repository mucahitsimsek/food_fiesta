// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/navigation/app_routes.dart';
import 'package:food_fiesta/product/utility/extensions/widget_ext.dart';
import 'package:food_fiesta/product/widget/app_column.dart';
import 'package:food_fiesta/product/widget/appbar/custom_appbar.dart';
import 'package:food_fiesta/product/widget/button/app_button.dart';
import 'package:food_fiesta/product/widget/button/app_text_button.dart';
import 'package:food_fiesta/product/widget/button/facebook_button.dart';
import 'package:food_fiesta/product/widget/button/google_button.dart';
import 'package:food_fiesta/product/widget/gap/app_gap.dart';
import 'package:food_fiesta/product/widget/text/header_text.dart';
import 'package:food_fiesta/product/widget/text/title_text.dart';
import 'package:food_fiesta/product/widget/text_field/email_text_field.dart';
import 'package:food_fiesta/product/widget/text_field/password_text_field.dart';
import 'package:gen/gen.dart';

part './mixins/sign_in_view_mixin.dart';

@RoutePage()
class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewtate();
}

class _SignInViewtate extends State<SignInView> with _SignInViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: LocaleKeys.signIn_title,
      ),
      body: SingleChildScrollView(
        child: AppColumn(
          children: [
            const HeaderText(
              text: LocaleKeys.signIn_description,
              textAlign: TextAlign.left,
              maxLines: 4,
            ),
            const AppGap.extraSmall(),
            const TitleText(
              text: LocaleKeys.signIn_subDescription,
              textAlign: TextAlign.left,
              maxLines: 4,
            ),
            const AppGap.small(),
            EmailTextField(
              formKey: _emailFormKey,
            ),
            const AppGap.small(),
            PasswordTextField(
              passwordFormKey: _passwordFormKey,
            ),
            const AppGap.small(),
            AppTextButton(
              onPressed: () => context.navigateNamedTo(
                AppRoutes.forgotPasswordView.path,
              ),
              title: LocaleKeys.signIn_forgotPassword,
            ),
            AppButton(
              title: LocaleKeys.signIn_button_login.tr(),
              onPressed: () {
                _passwordFormKey.currentState!.validate();
                _emailFormKey.currentState!.validate();
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleText(text: LocaleKeys.signIn_dontHaveAccount.tr()),
                const AppGap.small(),
                AppTextButton(
                  onPressed: () => context.navigateNamedTo(
                    AppRoutes.createAccountView.path,
                  ),
                  title: LocaleKeys.signIn_createAccount_title.tr(),
                  color: ColorName.accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ).center,
            TitleText(text: LocaleKeys.signIn_or.tr()).center,
            const AppGap.small(),
            const GoogleButton(),
            const AppGap.extraSmall(),
            const FacebookButton(),
          ],
        ).center,
      ),
    );
  }
}
