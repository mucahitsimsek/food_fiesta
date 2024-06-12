import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/utility/extensions/widget_ext.dart';
import 'package:food_fiesta/product/widget/app_column.dart';
import 'package:food_fiesta/product/widget/appbar/custom_appbar.dart';
import 'package:food_fiesta/product/widget/button/app_button.dart';
import 'package:food_fiesta/product/widget/gap/app_gap.dart';
import 'package:food_fiesta/product/widget/text/header_text.dart';
import 'package:food_fiesta/product/widget/text/ontap_rich_text.dart';
import 'package:gen/gen.dart';

@RoutePage()
class ResetEmailSentView extends StatefulWidget {
  const ResetEmailSentView({super.key});

  @override
  State<ResetEmailSentView> createState() => _ResetEmailSentViewState();
}

class _ResetEmailSentViewState extends State<ResetEmailSentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: LocaleKeys.signIn_forgotPassword,
      ),
      body: SingleChildScrollView(
        child: AppColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderText(
              text: LocaleKeys.signIn_reset,
            ),
            const AppGap.extraSmall(),
            OnTapRichText(
              title: LocaleKeys.signIn_resetDescription,
              description: LocaleKeys.signIn_havingProblem,
              onTap: () {
                log('Having problem clicked');
              },
            ),
            const AppGap.small(),
            const AppButton(
              title: LocaleKeys.signIn_resendReset,
            ),
            const AppGap.big(),
            Assets.icons.resetEmailIcon.svg().center,
          ],
        ),
      ),
    );
  }
}
