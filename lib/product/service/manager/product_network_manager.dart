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

  void listenErrorState() {
    final userOperation = ProductStateItems.productCache.userCacheOperation;
    final cachedUser = userOperation.get(StorageKeys.user.name);
    final idToken = cachedUser?.user?.idToken;
    interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (idToken != null) {
            options.queryParameters.addAll({'auth': idToken});
          }

          return handler.next(options);
        },
      ),
    );
  }
}
