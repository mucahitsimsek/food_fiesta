// ignore_for_file: public_member_api_docs

import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/utility/extensions/widget_ext.dart';
import 'package:architecture_template/product/widget/app_column.dart';
import 'package:architecture_template/product/widget/appbar/custom_appbar.dart';
import 'package:architecture_template/product/widget/button/app_button.dart';
import 'package:architecture_template/product/widget/button/app_text_button.dart';
import 'package:architecture_template/product/widget/button/facebook_button.dart';
import 'package:architecture_template/product/widget/button/google_button.dart';
import 'package:architecture_template/product/widget/gap/app_gap.dart';
import 'package:architecture_template/product/widget/text/header_text.dart';
import 'package:architecture_template/product/widget/text/title_text.dart';
import 'package:architecture_template/product/widget/text_field/app_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordFormKey = GlobalKey<FormState>();

  final ValueNotifier<bool> _isVisibleDone = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: LocaleKeys.signIn_title.tr(),
      ),
      body: AppColumn(
        children: [
          const HeaderText(
            text: LocaleKeys.signIn_description,
            textAlign: TextAlign.left,
          ),
          const AppGap.extraSmall(),
          const TitleText(
            text: LocaleKeys.signIn_subDescription,
            textAlign: TextAlign.left,
            maxLines: 4,
          ),
          const AppGap.small(),
          ValueListenableBuilder(
            valueListenable: _isVisibleDone,
            builder: (context, visible, child) => AppTextField(
              formKey: _emailFormKey,
              hintText: LocaleKeys.signIn_email.tr(),
              validator: (value) {
                _isVisibleDone.value = false;
                if (value!.ext.isNullOrEmpty) {
                  return 'Email is required';
                } else if (!value.ext.isValidEmail) {
                  return 'Email is not valid';
                }
                _isVisibleDone.value = true;
                return null;
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
          ),
          const AppGap.small(),
          AppTextField(
            formKey: _passwordFormKey,
            hintText: LocaleKeys.signIn_password.tr(),
            obscureText: true,
            validator: (value) {
              if (value!.ext.isNullOrEmpty) {
                return 'Password is required';
              } else if (!value.ext.isValidPassword) {
                return 'Password is not valid';
              }
              return null;
            },
          ),
          const AppGap.small(),
          AppTextButton(
            onPressed: () {},
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
                onPressed: () {},
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
    );
  }
}
