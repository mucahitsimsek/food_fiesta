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
  signUpView(
    '/signUpView',
    SignUpRoute(),
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

  locationTestView(
    '/locationTestView',
    LocationTestRoute(),
  ),

  mainView(
    '/mainView',
    MainRoute(),
  ),

  homePageView(
    'homePageView',
    HomePageRoute(),
  ),
  searchMainRoute(
    'searchMainRoute',
    SearchMainRoute(),
  ),
  searchView(
    'searchView',
    SearchRoute(),
  ),
  searchDetailView(
    'searchDetailView',
    SearchDetailRoute(),
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
