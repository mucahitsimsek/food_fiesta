import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/navigation/app_routes.dart';
import 'package:food_fiesta/product/utility/extensions/widget_ext.dart';
import 'package:food_fiesta/product/widget/app_column.dart';
import 'package:food_fiesta/product/widget/button/app_button.dart';
import 'package:food_fiesta/product/widget/logo_widget.dart';
import 'package:food_fiesta/product/widget/padding/app_padding.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      body: AppColumn(
        children: [
          const LogoWidget(),
          SizedBox(
            height: context.sized.height * 0.575,
            child: PageView.builder(
              controller: _pageController,
              itemCount: pageCount,
              itemBuilder: (context, index) {
                return buildPageViewItem(index);
              },
              physics: const BouncingScrollPhysics(),
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: pageCount,
            effect: ExpandingDotsEffect(
              activeDotColor: ColorName.green,
              dotHeight: context.sized.height * 0.01,
            ),
          ),
          ValueListenableBuilder(
            valueListenable: _isLastPage,
            builder: (context, value, child) {
              return AppButton(
                title: LocaleKeys.general_button_getStarted,
                onPressed: () {
                  if (value) {
                    context.router.pushNamed(AppRoutes.signInView.routeName);
                  } else {
                    _changePage;
                  }
                },
              );
            },
          ),
        ],
      ).center,
    );
  }

  Widget buildPageViewItem(int index) {
    switch (index) {
      case 0:
        return _item(
          Assets.icons.introFirstIcon.svg(),
          LocaleKeys.walkthrough_firstDescription.tr(),
          LocaleKeys.walkthrough_firstMessage.tr(),
        );
      case 1:
        return _item(
          Assets.icons.introSecondIcon.svg(),
          LocaleKeys.walkthrough_secondDescription.tr(),
          LocaleKeys.walkthrough_secondMessage.tr(),
        );
      case 2:
        return _item(
          Assets.icons.introThirtyIcon.svg(),
          LocaleKeys.walkthrough_thirdDescription.tr(),
          LocaleKeys.walkthrough_thirdMessage.tr(),
        );
      default:
        return Container();
    }
  }

  Column _item(Widget icon, String description, String message) {
    return Column(
      children: [
        Container(
          padding: const AppPadding.small(),
          height: context.sized.height * 0.4,
          width: context.sized.width,
          child: icon,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: description,
            style: context.general.textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
            children: [
              const TextSpan(text: '\n'),
              TextSpan(
                text: message,
                style: context.general.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  PreferredSize _introductionViewAppBar() {
    return PreferredSize(
      preferredSize: const Size(kToolbarHeight, kToolbarHeight),
      child: Container(),
    );
  }
}
