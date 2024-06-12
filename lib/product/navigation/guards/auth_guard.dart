import 'package:auto_route/auto_route.dart';
import 'package:food_fiesta/product/navigation/app_routes.dart';
import 'package:food_fiesta/product/state/container/product_state_items.dart';
import 'package:food_fiesta/product/utility/constants/enums/storage_keys.dart';

class AuthGuard extends AutoRouteGuard {
  final userCache = ProductStateItems.productCache.userCacheOperation;
  late final cachedUser = userCache.get(StorageKeys.user.name);
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (cachedUser?.user != null) {
      router.pushAndPopUntil(
        AppRoutes.mainView.route,
        predicate: (_) => false,
      );
    } else {
      resolver.next();
    }

    // router.push(AppRoutes.signInView.route);
    // resolver.next();
  }
}
