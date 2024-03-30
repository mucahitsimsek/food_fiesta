import 'package:food_fiesta/product/service/interface/authantication_opeartion.dart';
import 'package:food_fiesta/product/service/manager/authentication_network_manager.dart';
import 'package:food_fiesta/product/service/manager/network_service_path.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

///LoginService is a network manager class for product
class LoginService extends AuthtenticationOperation {
  ///LoginService is a network manager class for product
  LoginService({required AuthenticationNetworkManager networkManager})
      : _networkManager = networkManager {
    _init();
  }

  final AuthenticationNetworkManager _networkManager;

  void _init() {
    _networkManager.listenErrorState;
  }

  @override
  Future<AuthResponseModel<User?>> signUp({required User user}) async => AuthResponseModel<User?>(
        requestCallback: () => _networkManager.send<User, User>(
          NetworkServicePaths.signUp.value,
          parseModel: User(),
          method: RequestType.POST,
          data: user.toJson(),
        ),
      ).response();

  @override
  Future<AuthResponseModel<User>> signIn({required User user}) async => AuthResponseModel<User>(
        requestCallback: () => _networkManager.send<User, User>(
          NetworkServicePaths.signIn.value,
          parseModel: User(),
          method: RequestType.POST,
          data: user.toJson(),
        ),
      ).response();

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
