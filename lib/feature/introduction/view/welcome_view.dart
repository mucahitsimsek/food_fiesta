import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/widget/app_column.dart';
import 'package:food_fiesta/product/widget/button/app_button.dart';
import 'package:food_fiesta/product/widget/gap/app_gap.dart';
import 'package:food_fiesta/product/widget/logo_widget.dart';
import 'package:food_fiesta/product/widget/padding/app_padding.dart';
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
          _roundedBox(context),
          Padding(
            padding: AppPadding.only(
              top: context.sized.height * 0.15,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: AppColumn(
                children: [
                  const LogoWidget(),
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
                    title: LocaleKeys.general_button_getStarted,
                    onPressed: () {
                      context.router.pushNamed('/introduction');
                      // context.pushRoute(
                      //   const IntroductionRoute(),
                      // );
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

  Positioned _roundedBox(BuildContext context) {
    return Positioned(
      top: -context.sized.height * 0.13,
      left: -context.sized.width * 0.15,
      child: Container(
        width: context.sized.width,
        height: context.sized.height * 0.65,
        decoration: BoxDecoration(
          color: ColorName.accentColor.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
