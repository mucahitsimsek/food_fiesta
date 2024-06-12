import 'package:auto_route/auto_route.dart';
import 'package:food_fiesta/feature/auth/view/forgot_password_view.dart';
import 'package:food_fiesta/feature/auth/view/reset_email_sent_view.dart';
import 'package:food_fiesta/feature/auth/view/sign_in_view.dart';
import 'package:food_fiesta/feature/auth/view/sign_up_view.dart';
import 'package:food_fiesta/feature/home/view/home_page_view.dart';
import 'package:food_fiesta/feature/introduction/view/introduction_view.dart';
import 'package:food_fiesta/feature/introduction/view/welcome_view.dart';
import 'package:food_fiesta/feature/main/main_view.dart';
import 'package:food_fiesta/feature/search/sub_view/search_detail_view.dart';
import 'package:food_fiesta/feature/search/view/search_main_view.dart';
import 'package:food_fiesta/feature/search/view/search_view.dart';
import 'package:food_fiesta/feature/tests/view/location_test_view.dart';
import 'package:food_fiesta/product/navigation/app_routes.dart';
import 'package:food_fiesta/product/navigation/guards/auth_guard.dart';

part 'app_router.gr.dart';

///App navigation router
@AutoRouterConfig(replaceInRouteName: AppRouter._replaceRouteName)
class AppRouter extends _$AppRouter
// implements AutoRouteGuard
{
  static const _replaceRouteName = 'View,Route';

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WelcomeRoute.page,
          type: const RouteType.adaptive(),
          path: AppRoutes.welcomeView.path,
          guards: [
            AuthGuard(),
          ],
          initial: true,
        ),
        CustomRoute(
          page: MainRoute.page,
          path: AppRoutes.mainView.path,
          children: [
            AutoRoute(
              page: HomePageRoute.page,
              path: AppRoutes.homePageView.path,
            ),
            AutoRoute(
              page: SearchMainRoute.page,
              path: AppRoutes.searchMainRoute.path,
              children: [
                AutoRoute(
                  page: SearchRoute.page,
                  path: AppRoutes.searchView.path,
                  initial: true,
                ),
                AutoRoute(
                  page: SearchDetailRoute.page,
                  path: AppRoutes.searchDetailView.path,
                ),
              ],
            ),
          ],
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          page: IntroductionRoute.page,
          path: AppRoutes.introductionView.path,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          page: SignInRoute.page,
          path: AppRoutes.signInView.path,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          page: SignUpRoute.page,
          path: AppRoutes.signUpView.path,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          page: ForgotPasswordRoute.page,
          path: AppRoutes.forgotPasswordView.path,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          page: ResetEmailSentRoute.page,
          path: AppRoutes.resetEmailSentView.path,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        // CustomRoute(
        //   page: HomePageRoute.page,
        //   path: AppRoutes.homePageView.path,
        //   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        // ),
        CustomRoute(
          page: LocationTestRoute.page,
          path: AppRoutes.locationTestView.path,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
      ];

  // @override
  // void onNavigation(NavigationResolver resolver, StackRouter router) {
  //   final userCache = ProductStateItems.productCache.userCacheOperation;
  //   late final cachedUser = userCache.get(StorageKeys.user.name);
  //   if (cachedUser?.user != null) {
  //     resolver
  //       ..next(false)
  //       ..redirect(AppRoutes.welcomeView.route).then((value) => resolver.next());
  //   } else {
  //     resolver.next();
  //   }
  // }
}
