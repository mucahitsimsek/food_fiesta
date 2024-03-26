import 'package:auto_route/auto_route.dart';
import 'package:food_fiesta/feature/auth/view/forgot_password_view.dart';
import 'package:food_fiesta/feature/auth/view/sign_in_view.dart';
import 'package:food_fiesta/feature/introduction/view/introduction_view.dart';
import 'package:food_fiesta/feature/introduction/view/welcome_view.dart';
import 'package:logger/logger.dart';

part 'app_router.gr.dart';

///App navigation router
@AutoRouterConfig(replaceInRouteName: AppRouter._replaceRouteName)
class AppRouter extends _$AppRouter {
  static const _replaceRouteName = 'View,Route';
  final logger = Logger();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WelcomeRoute.page,
          type: const RouteType.adaptive(),
          initial: true,
        ),
        CustomRoute(
          page: IntroductionRoute.page,
          path: '/introductionView',
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          page: SignInRoute.page,
          path: '/signInView',
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          page: ForgotPasswordRoute.page,
          path: '/forgotPasswordView',
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
      ];
}
