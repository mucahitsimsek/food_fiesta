import 'package:auto_route/auto_route.dart';
import 'package:food_fiesta/feature/auth/view/forgot_password_view.dart';
import 'package:food_fiesta/feature/auth/view/reset_email_sent_view.dart';
import 'package:food_fiesta/feature/auth/view/sign_in_view.dart';
import 'package:food_fiesta/feature/auth/view/sign_up_view.dart';
import 'package:food_fiesta/feature/introduction/view/introduction_view.dart';
import 'package:food_fiesta/feature/introduction/view/welcome_view.dart';
import 'package:food_fiesta/product/navigation/app_routes.dart';
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
          path: AppRoutes.welcomeView.path,
          initial: true,
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
          page: ForgotPasswordRoute.page,
          path: AppRoutes.forgotPasswordView.path,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          page: ResetEmailSentRoute.page,
          path: AppRoutes.resetEmailSentView.path,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        CustomRoute(
          page: SignUpRoute.page,
          path: AppRoutes.signUpView.path,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
      ];
}
