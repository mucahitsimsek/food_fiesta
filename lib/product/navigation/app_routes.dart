import 'package:auto_route/auto_route.dart';
import 'package:food_fiesta/product/navigation/app_router.dart';

enum AppRoutes {
  welcomeView(
    '/welcomeView',
    WelcomeRoute(),
  ),
  signInView(
    '/signInView',
    SignInRoute(),
  ),
  forgotPasswordView(
    '/forgotPasswordView',
    ForgotPasswordRoute(),
  ),
  introductionView(
    '/introductionView',
    IntroductionRoute(),
  ),

  resetEmailSentView(
    '/resetEmailSentRoute',
    ResetEmailSentRoute(),
  ),

  createAccountView(
    '/createAccountRoute',
    CreateAccountRoute(),
  ),
  ;

  const AppRoutes(
    this.path,
    this.route,
  );

  ///AutoRoute page
  final PageRouteInfo route;

  ///Route name
  final String path;
}
