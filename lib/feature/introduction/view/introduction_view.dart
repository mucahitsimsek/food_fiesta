import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/utility/extensions/widget_ext.dart';
import 'package:architecture_template/product/widget/button/app_button.dart';
import 'package:architecture_template/product/widget/logo_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

part './mixins/introduction_view_mixin.dart';

@RoutePage()
class IntroductionView extends StatefulWidget {
  const IntroductionView({super.key});

  @override
  State<IntroductionView> createState() => _IntroductionViewState();
}

class _IntroductionViewState extends State<IntroductionView> with IntroductionViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _introductionViewAppBar(),
      body: Column(
        children: [
          const LogoWidget(),
          SizedBox(
            height: context.sized.height * 0.575,
            child: PageView.builder(
              controller: _pageController,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Assets.icons.introFirstIcon.svg(
                      height: context.sized.height * 0.4,
                      width: context.sized.width * 0.3,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: LocaleKeys.walkthrough_firstDescription.tr(),
                        style: context.general.textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          const TextSpan(text: '\n'),
                          TextSpan(
                            text: LocaleKeys.walkthrough_firstMessage.tr(),
                            style: context.general.textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              physics: const BouncingScrollPhysics(),
            ),
          ),
          AppButton(
            title: LocaleKeys.general_button_getStarted.tr(),
            onPressed: () {
              // context.router.pushNamed('/home');
            },
          ),
        ],
      ).center,
    );
  }

  PreferredSize _introductionViewAppBar() {
    return PreferredSize(
      preferredSize: const Size(kToolbarHeight, kToolbarHeight),
      child: Container(),
    );
  }
}
