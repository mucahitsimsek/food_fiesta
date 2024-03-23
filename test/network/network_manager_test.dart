// import 'package:architecture_template/product/init/config/app_environment.dart';
// import 'package:architecture_template/product/service/manager/product_network_manager.dart';
// import 'package:architecture_template/product/service/manager/service_path.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:gen/gen.dart';
// import 'package:vexana/vexana.dart';

// void main() {
//   late ProductNetworkManager productServiceManager;
//   setUp(() {
//     AppEnvironment.general();
//     productServiceManager = ProductNetworkManager.base();
//   });

//   test('get users from api', () async {
//     final response = await productServiceManager.send<User, List<User>>(
//       ProductServicePath.posts.value,
//       parseModel: User(),
//       method: RequestType.GET,
//     );

//     expect(response.data, isNotNull);
//   });
// }
