import 'package:auto_route/auto_route.dart';
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
          path: '/introduction',
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),
      ];
}
