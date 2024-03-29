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

  test('api worked', () async {
    await loginService.signup();

    // final authError = response.error;

    // log(response.data?.email.toString() ?? 'errordata');
    // log(response.error?.statusCode?.toString() ?? 'error');
    // log(response.error?.description ?? 'error');
    // expect(response.data, isNotEmpty);
  });

  // test('Api test', () async {
  //   final INetworkManager myNetworkManager = NetworkManager<EmptyModel>(
  //     isEnableLogger: true,
  //     options: BaseOptions(
  //       baseUrl: 'https://jsonplaceholder.typicode.com/',
  //     ),
  //   );

  //   final response = await myNetworkManager.send<EmptyModel, List<EmptyModel>>(
  //     '/todos',
  //     parseModel: EmptyModel(),
  //     method: RequestType.GET,
  //   );

  //   log(response.data?.toString() ?? 'errordata');

  //   expect(response, isNotNull);
  // });
}
