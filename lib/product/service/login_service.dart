import 'package:food_fiesta/product/init/config/app_environment.dart';
import 'package:food_fiesta/product/service/interface/authantication_opeartion.dart';
import 'package:food_fiesta/product/service/manager/authentication_network_manager.dart';
import 'package:food_fiesta/product/service/manager/network_service_path.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

///LoginService is a network manager class for product
class LoginService extends AuthanticationOperation {
  ///LoginService is a network manager class for product
  LoginService({
    required AuthenticationNetworkManager networkManager,
  }) : _networkManager = networkManager;

  final AuthenticationNetworkManager _networkManager;

  @override
  Future<User> signUp(String email, String password) {
    final user = User(email: email, password: password);
    final response = _networkManager.send<User, User>(
      '${NetworkServicePaths.signUp.value}?key=${AppEnvironmentItems.apiKey.value}',
      parseModel: User(),
      method: RequestType.POST,
      data: user.toJson(),
    );

    return Future.value(user);
  }

  @override
  Future<User> signIn(String email, String password) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
