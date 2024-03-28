import 'dart:convert';
import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:food_fiesta/product/init/config/app_environment.dart';
import 'package:food_fiesta/product/service/login_service.dart';
import 'package:food_fiesta/product/service/manager/authentication_network_manager.dart';

void main() {
  late AuthenticationNetworkManager networkManager;
  late LoginService loginService;
  setUp(() {
    AppEnvironment.general();
    networkManager = AuthenticationNetworkManager.auth();
    loginService = LoginService(
      networkManager: networkManager,
    );
  });

  test('api çalıştı', () async {
    final response = await loginService.signUp(
      email: 'mucahitsmsk@icloud.com',
      password: '123456.*1aA_-',
    );

    final exp = jsonDecode(response.error!.description!) as Map<String, dynamic>;

    log(response.data?.email.toString() ?? 'errordata');
    log(response.error?.statusCode?.toString() ?? 'error');
    log(response.error?.description ?? 'error');
    // expect(response.data, isNotEmpty);
  });
}
