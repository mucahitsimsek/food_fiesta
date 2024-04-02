import 'package:flutter/material.dart';
import 'package:food_fiesta/product/service/interface/user_operation.dart';
import 'package:food_fiesta/product/service/manager/index.dart';
import 'package:food_fiesta/product/service/manager/product_network_manager.dart';
import 'package:food_fiesta/product/service/manager/product_network_paths.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

@immutable
final class UserService implements UserOperation {
  UserService({
    required ProductNetworkManager networkManager,
  }) {
    _productNetworkManager = networkManager;
    _init();
  }

  void _init() {
    _productNetworkManager.listenErrorState;
  }

  late final ProductNetworkManager _productNetworkManager;

  @override
  Future<BaseResponseModel<User>> getUser({required String userId}) async {
    final response = BaseResponseModel.sendRequest(
      request: await _productNetworkManager.send<User, User>(
        ProductNetworkPaths.usersPatch.withJson(
          query: userId,
        ),
        parseModel: User(),
        method: RequestType.GET,
      ),
    );

    return response;
  }

  @override
  Future<void> createUser() {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser() {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<void> getUsers() {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser() {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
