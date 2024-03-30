import 'dart:developer';

import 'package:food_fiesta/product/init/config/app_environment.dart';
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
    _networkManager.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.queryParameters.addAll(
            {
              'key': AppEnvironmentItems.apiKey.value,
            },
          );

          return handler.next(options);
        },
        onError: (error, handler) {
          log('Error: ${error.message}');
          return handler.next(error);
        },
        onResponse: (response, handler) {
          log('Response: ${response.data}');
          return handler.next(response);
        },
      ),
    );
  }

  @override
  Future<AuthResponseModel<User?>> signUp({required User user}) async {
    final result = AuthResponseModel<User?>(
      requestCallback: () async {
        final userResponse = await _networkManager.send<User, User>(
          NetworkServicePaths.signUp.value,
          parseModel: User(),
          method: RequestType.POST,
          data: user.toJson(),
        );
        return userResponse;
      },
    );

    return result.response();
  }

  @override
  Future<AuthResponseModel<User>> signIn({required User user}) async {
    final response = AuthResponseModel<User>(
      requestCallback: () => _networkManager.send<User, User>(
        NetworkServicePaths.signIn.value,
        parseModel: User(),
        method: RequestType.POST,
        data: user.toJson(),
      ),
    );

    return response.response();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
