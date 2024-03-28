import 'package:food_fiesta/product/init/config/app_environment.dart';
import 'package:food_fiesta/product/service/interface/authantication_opeartion.dart';
import 'package:food_fiesta/product/service/manager/authentication_network_manager.dart';
import 'package:food_fiesta/product/service/manager/network_service_path.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

///LoginService is a network manager class for product
class LoginService extends AuthanticationOperation {
  ///LoginService is a network manager class for product
  LoginService({required AuthenticationNetworkManager networkManager})
      : _networkManager = networkManager {
    _init();
  }

  final AuthenticationNetworkManager _networkManager;

  void _init() {
    _networkManager.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.queryParameters.addAll(
            {
              'key': AppEnvironmentItems.apiKey.value,
            },
          );
          options.validateStatus = (status) => status! < 500;

          return handler.next(options);
        },
      ),
    );
  }

  // _networkManager.send<User, User>(
  //       '${NetworkServicePaths.signUp.value}?key=${AppEnvironmentItems.apiKey.value}',
  //       parseModel: User(),
  //       method: RequestType.POST,
  //       data: user.toJson(),
  //     ),

  @override
  Future<IResponseModel<User?, EmptyModel?>> signUp({
    required String email,
    required String password,
  }) async {
    final user = User(email: email, password: password);
    final response = _networkManager.send<User, User>(
      NetworkServicePaths.signUp.value,
      parseModel: User(),
      method: RequestType.POST,
      data: user.toJson(),
    );
    return response;
  }

  @override
  Future<User> signIn(String email, String password) async {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
