import 'package:flutter_test/flutter_test.dart';
import 'package:food_fiesta/product/init/config/app_environment.dart';
import 'package:food_fiesta/product/service/manager/product_network_manager.dart';
import 'package:food_fiesta/product/service/user_service.dart';
import 'package:food_fiesta/product/state/container/product_state_container.dart';

import '../core/hive_common_test.dart';

void main() {
  late final UserService userService;
  late final ProductNetworkManager networkManager;
  setUp(() async {
    await initTests();
    AppEnvironment.general();
    ProductStateContainer.setup();
    networkManager = ProductNetworkManager.base();
    userService = UserService(
      networkManager: networkManager,
    );
  });

  test('get user from api', () async {
    final response = await userService.getUser(
      userId: '1',
    );
    expect(response.data, isNotNull);
    expect('', '');
  });
}
