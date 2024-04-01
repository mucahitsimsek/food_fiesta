import 'package:food_fiesta/product/init/config/app_environment.dart';
import 'package:vexana/vexana.dart';

/// ProductServiceManager is a network manager class for product
///
final class ProductNetworkManager extends NetworkManager<EmptyModel> {
  /// [super.options] is a required parameter
  ProductNetworkManager.base()
      : super(
          isEnableLogger: true,
          options: BaseOptions(
            baseUrl: AppEnvironmentItems.baseUrl.value,
          ),
        );
}
