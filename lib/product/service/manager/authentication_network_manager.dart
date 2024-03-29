import 'package:food_fiesta/product/init/config/app_environment.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

/// ProductServiceManager is a network manager class for product
final class AuthenticationNetworkManager extends NetworkManager<AuthErrorModel> {
  /// [super.options] is a required parameter
  AuthenticationNetworkManager.auth()
      : super(
          isEnableLogger: true,
          errorModel: AuthErrorModel(),
          errorModelFromData: AuthErrorModel().fromJson,
          options: BaseOptions(
            baseUrl: AppEnvironmentItems.authUrl.value,
            validateStatus: (status) => status! < 500,
          ),
        );
}
