import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/utility/constants/enums/app_values.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:architecture_template/product/widget/button/app_button.dart';
import 'package:architecture_template/product/widget/gap/app_gap.dart';
import 'package:architecture_template/product/widget/padding/app_padding.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

@RoutePage()
class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -context.sized.height * 0.075,
            left: -context.sized.width * 0.15,
            child: Container(
              width: context.sized.width,
              height: context.sized.height * 0.5,
              decoration: BoxDecoration(
                color: ColorName.accentColor.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: AppPadding.only(
              top: context.sized.height * 0.125,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.icons.logoIcon.svg(),
                      const AppGap.small(),
                      Text(
                        LocaleKeys.logo_title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: AppValues.extraLarge.value,
                          fontWeight: FontWeight.bold,
                        ),
                      ).tr(),
                    ],
                  ),
                  const AppGap.big(),
                  Assets.icons.welcomeIceCreamIcon.svg(),
                  const AppGap.regular(),
                  Text(
                    LocaleKeys.welcome_message,
                    textAlign: TextAlign.center,
                    style: context.general.textTheme.titleMedium,
                  ).tr(),
                  const AppGap.extraBig(),
                  AppButton(
                    title: LocaleKeys.general_button_getStarted.tr(),
                    onPressed: () {
                      ProductLocalization.updateLang(context, Locales.tr);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
