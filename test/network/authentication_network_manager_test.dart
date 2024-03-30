import 'package:flutter_test/flutter_test.dart';
import 'package:food_fiesta/product/init/config/app_environment.dart';
import 'package:food_fiesta/product/service/login_service.dart';
import 'package:food_fiesta/product/service/manager/authentication_network_manager.dart';
import 'package:gen/gen.dart';

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

  test('signUp api test', () async {
    final request = await loginService.signUp(
      user: User(
        email: 'mucahitasmsaka_1_@icloud.com',
        password: '123.*_0?aAa-',
      ),
    );
    expect(request.data, isNotNull);
  });

  test('signIn api test', () async {
    final request = await loginService.signIn(
      user: User(
        email: 'mucahitsmsk@icloud.com',
        password: '123.*_0?aAa-*',
      ),
    );

    expect(request.error, isNull);
  });
}
