import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/widget/app_column.dart';
import 'package:food_fiesta/product/widget/appbar/custom_appbar.dart';
import 'package:food_fiesta/product/widget/button/app_button.dart';
import 'package:food_fiesta/product/widget/button/facebook_button.dart';
import 'package:food_fiesta/product/widget/button/google_button.dart';
import 'package:food_fiesta/product/widget/gap/app_gap.dart';
import 'package:food_fiesta/product/widget/text/header_text.dart';
import 'package:food_fiesta/product/widget/text/ontap_rich_text.dart';
import 'package:food_fiesta/product/widget/text/title_text.dart';
import 'package:food_fiesta/product/widget/text_field/app_text_field.dart';
import 'package:food_fiesta/product/widget/text_field/email_text_field.dart';
import 'package:food_fiesta/product/widget/text_field/password_text_field.dart';

@RoutePage()
class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  final _emailFormKey = GlobalKey<FormState>();
  final _passwordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: LocaleKeys.signIn_createAccount_title,
      ),
      body: SingleChildScrollView(
        child: AppColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderText(
              text: LocaleKeys.signIn_createAccount_title,
            ),
            const AppGap.extraSmall(),
            OnTapRichText(
              title: LocaleKeys.signIn_createAccount_description,
              description: LocaleKeys.signIn_createAccount_subTitle,
              onTap: () {},
            ),
            const AppGap.small(),
            const AppTextField(
              hintText: LocaleKeys.signIn_createAccount_name,
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
            const AppButton(
              title: LocaleKeys.signIn_createAccount_button_signUp,
            ),
            const AppGap.small(),
            const TitleText(
              text: LocaleKeys.signIn_createAccount_subDescription,
            ),
            const AppGap.extraSmall(),
            const Center(
              child: TitleText(
                text: LocaleKeys.signIn_or,
              ),
            ),
            const AppGap.small(),
            const GoogleButton(),
            const AppGap.extraSmall(),
            const FacebookButton(),
          ],
        ),
      ),
    );
  }
}
