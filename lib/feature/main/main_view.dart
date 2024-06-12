import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/navigation/app_routes.dart';
import 'package:gen/gen.dart';

@RoutePage()
final class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      curve: Curves.easeIn,
      transitionBuilder: animateBuilder,
      routes: routes,
      builder: bottomNavBar,
    );
  }

  List<PageRouteInfo<dynamic>> get routes {
    return [
      AppRoutes.homePageView.route,
      AppRoutes.searchMainRoute.route,
    ];
  }

  Widget animateBuilder(BuildContext context, Widget child, Animation<double> animation) {
    final tabs = AutoTabsRouter.of(context);
    if (tabs.previousIndex == null) return child;
    return tabs.activeIndex > tabs.previousIndex!
        ? TransitionsBuilders.slideLeftWithFade(context, animation, animation, child)
        : TransitionsBuilders.slideRightWithFade(context, animation, animation, child);
  }

  Widget bottomNavBar(BuildContext context, Widget child) {
    final tabs = AutoTabsRouter.of(context);
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabs.activeIndex,
        onTap: tabs.setActiveIndex,
        selectedIconTheme: const IconThemeData(
          color: ColorName.accentColor,
        ),
        unselectedIconTheme: const IconThemeData(
          color: ColorName.bodyText,
        ),
        selectedItemColor: ColorName.accentColor,
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.homeIcon.svg(),
            label: LocaleKeys.home_title.tr(),
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.searchIcon.svg(),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
