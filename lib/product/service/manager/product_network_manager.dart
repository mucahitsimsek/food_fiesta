import 'package:food_fiesta/product/init/config/app_environment.dart';
import 'package:food_fiesta/product/state/container/index.dart';
import 'package:food_fiesta/product/utility/constants/enums/storage_keys.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

/// ProductServiceManager is a network manager class for product
///
final class ProductNetworkManager extends NetworkManager<BaseErrorModel> {
  /// [super.options] is a required parameter
  ProductNetworkManager.base()
      : super(
          isEnableLogger: true,
          errorModel: BaseErrorModel(),
          options: BaseOptions(
            baseUrl: AppEnvironmentItems.baseUrl.value,
          ),
        );

  void get listenErrorState {
    final userOperation = ProductStateItems.productCache.userCacheOperation;
    final cachedUser = userOperation.get(StorageKeys.user.name);

    interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.queryParameters.addAll(
            {
              'auth': cachedUser?.user?.idToken,
              'print': 'pretty',
            },
          );

          return handler.next(options);
        },
      ),
    );
  }
}
