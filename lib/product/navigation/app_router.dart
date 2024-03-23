import 'package:architecture_template/feature/auth/view/login_view.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

///App navigation router
@AutoRouterConfig(replaceInRouteName: AppRouter._replaceRouteName)
class AppRouter extends _$AppRouter {
  static const _replaceRouteName = 'View,Route';
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
        ),
      ];
}
