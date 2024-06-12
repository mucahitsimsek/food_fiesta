import 'package:food_fiesta/product/service/interface/authentication_operation.dart';
import 'package:food_fiesta/product/service/manager/authentication_network_manager.dart';
import 'package:food_fiesta/product/service/manager/product_network_paths.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

///LoginService is a network manager class for product
final class LoginService implements AuthtenticationOperation {
  ///LoginService is a network manager class for product
  LoginService({required AuthenticationNetworkManager networkManager}) {
    _networkManager = networkManager;
    _init();
  }

  late final AuthenticationNetworkManager _networkManager;

  void _init() {
    _networkManager.listenErrorState;
  }

  @override
  Future<AuthResponseModel<User>> signUp({required User user}) async => AuthResponseModel<User>(
        requestCallback: () => _networkManager.send<User, User>(
          ProductNetworkPaths.signUp.value,
          parseModel: User(),
          method: RequestType.POST,
          data: user.toJson(),
        ),
      ).response();

  @override
  Future<AuthResponseModel<User>> signIn({required User user}) async => AuthResponseModel<User>(
        requestCallback: () => _networkManager.send<User, User>(
          ProductNetworkPaths.signIn.value,
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
