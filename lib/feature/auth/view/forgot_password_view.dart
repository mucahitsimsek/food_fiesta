import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/navigation/app_routes.dart';
import 'package:food_fiesta/product/widget/app_column.dart';
import 'package:food_fiesta/product/widget/appbar/custom_appbar.dart';
import 'package:food_fiesta/product/widget/button/app_button.dart';
import 'package:food_fiesta/product/widget/gap/app_gap.dart';
import 'package:food_fiesta/product/widget/text/header_text.dart';
import 'package:food_fiesta/product/widget/text/title_text.dart';
import 'package:food_fiesta/product/widget/text_field/email_text_field.dart';

@RoutePage()
class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final _emailFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: LocaleKeys.signIn_reset,
      ),
      body: SingleChildScrollView(
        child: AppColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderText(
              text: LocaleKeys.signIn_forgotPassword,
              textAlign: TextAlign.left,
            ),
            const AppGap.extraSmall(),
            const TitleText(
              text: LocaleKeys.signIn_forgotDescription,
              textAlign: TextAlign.left,
            ),
            const AppGap.small(),
            EmailTextField(formKey: _emailFormKey),
            const AppGap.small(),
            AppButton(
              title: LocaleKeys.signIn_reset,
              onPressed: () => context.navigateNamedTo(
                AppRoutes.resetEmailSentView.path,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
