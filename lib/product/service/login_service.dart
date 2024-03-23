// import 'package:architecture_template/product/service/interface/authantication_opeartion.dart';
// import 'package:architecture_template/product/service/manager/service_path.dart';
// import 'package:gen/gen.dart';
// import 'package:vexana/vexana.dart';

// ///LoginService is a network manager class for product
// class LoginService extends AuthanticationOperation {
//   ///LoginService is a network manager class for product
//   LoginService(INetworkManager<EmptyModel> networkManager)
//       : _networkManager = networkManager;

//   final INetworkManager _networkManager;

//   ///LoginService is a network manager class for product
//   @override
//   Future<List<User>> users() async {
//     final response = await _networkManager.send<User, List<User>>(
//       ProductServicePath.posts.value,
//       parseModel: User(),
//       method: RequestType.GET,
//     );

//     return response.data ?? [];
//   }
// }
