import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:food_fiesta/product/init/config/app_environment.dart';
import 'package:food_fiesta/product/service/manager/product_network_manager.dart';
import 'package:food_fiesta/product/service/user_service.dart';
import 'package:food_fiesta/product/state/container/index.dart';
import 'package:food_fiesta/product/state/container/product_state_container.dart';
import 'package:gen/gen.dart';

import '../core/hive_common_test.dart';

void main() {
  // TestWidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  late final UserService userService;
  late final ProductNetworkManager networkManager;
  const token =
      'eyJhbGciOiJSUzI1NiIsImtpZCI6IjgwNzhkMGViNzdhMjdlNGUxMGMzMTFmZTcxZDgwM2I5MmY3NjYwZGYiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vZm9vZC1maWVzdGEtZ2l0IiwiYXVkIjoiZm9vZC1maWVzdGEtZ2l0IiwiYXV0aF90aW1lIjoxNzEyMTM5NDE0LCJ1c2VyX2lkIjoiRXl2amtPZnhEWk93ZENmdlJHMkdYcENpcEVKMyIsInN1YiI6IkV5dmprT2Z4RFpPd2RDZnZSRzJHWHBDaXBFSjMiLCJpYXQiOjE3MTIxMzk0MTQsImV4cCI6MTcxMjE0MzAxNCwiZW1haWwiOiJtdWNhaGl0c21za0BpY2xvdWQuY29tIiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJmaXJlYmFzZSI6eyJpZGVudGl0aWVzIjp7ImVtYWlsIjpbIm11Y2FoaXRzbXNrQGljbG91ZC5jb20iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwYXNzd29yZCJ9fQ.i18D4DGK7h4TFa0Mtqxebkqc2VPyHWVi4_87QRHP8YgovCfod1zdU6IGxa82lohrzQ5zezYCh3NIFC0yO8H4rIhMHzHngBvTWvpGzzZxuMbCIR5Ds0ODDoE3G9uQ_nCYdH5EgDU6PVpJdUqlACXkPEtjqjq_Q6NeKFCTuPuG4iAPVVaZfIZHRtl6Mwqr_XREsgNK4SjbRGiiaXFx3gCgMslPLqylfsPNiNYVSJPqlH-dBsqlHc5k2y5LwZnsZ7EXIWrgxjBl4vK0A4RNAdRjow9rPwCGxD-WI0Lnukabe3sLRhhZ8_vJWbmgKDlBFugkJ9ZgKjjONH__OQAXM07yGQ';
  setUp(() async {
    await initTests();
    AppEnvironment.general();
    ProductStateContainer.setup();
    networkManager = ProductStateItems.networkManager;
    userService = UserService(
      networkManager: networkManager,
    );
  });

  test('get user from api', () async {
    final response = await userService.getUser(
      userId: 'asda',
      token: token,
    );
    expect(response.data, isNotNull);
    expect('', '');
  });

  test('add user from api', () async {
    final response = await userService.createUser(
      userId: 'asda',
      token: token,
      user: User(
        email: 'mucahitsmsk@icloud.com',
        name: 'Mucahit',
        age: 20,
      ),
    );
    expect(response.data, isNotNull);
    expect('', '');
  });

  test('get all users from api', () async {
    final response = await userService.getUsers(
      token: token,
    );
    expect(response.data, isNotNull);
    expect('', '');
  });

  test('update user from api', () async {
    final response = await userService.updateUser(
      token: token,
      userId: 'kX0CyOsJdBMHcGnevawmG4aZzEs1',
      user: User(
        email: 'hehe',
      ),
    );
    expect(response.data, isNotNull);
    expect('', '');
  });

  // test('delete user from api', () async {
  //   final response = await userService.deleteUser(
  //     userId: 'aaaa',
  //     token: token,
  //   );
  //   response;
  //   expect('', isNotNull);

  //   ///
  //   ///┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  //   ///│ Parse Error: Exception: Response body is not a List or a Map<String, dynamic> - response body: null T model: Users , R model: void
  //   ///├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
  //   ///
  //   expect('', '');
  // });
}
