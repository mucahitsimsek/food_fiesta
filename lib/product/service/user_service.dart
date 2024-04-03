import 'dart:developer';

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
  Future<BaseResponseModel<User>> getUser({
    required String userId,
    required String token,
  }) async =>
      BaseResponseModel.sendRequest(
        request: await _productNetworkManager.send<User, User>(
          ProductNetworkPaths.usersPatch.withJson(
            query: userId,
          ),
          queryParameters: {
            'auth': token,
          },
          parseModel: User(),
          method: RequestType.GET,
        ),
      );

  @override
  Future<BaseResponseModel<User>> createUser({
    required String userId,
    required String token,
    required User user,
  }) async =>
      BaseResponseModel.sendRequest(
        request: await _productNetworkManager.send<User, User>(
          ProductNetworkPaths.usersPatch.withJson(
            query: userId,
          ),
          parseModel: User(),
          queryParameters: {
            'auth': token,
          },
          data: user.toJson(),
          method: RequestType.PATCH,
        ),
      );

  @override
  Future<BaseResponseModel<User>> updateUser({
    required String userId,
    required User user,
    required String token,
  }) async =>
      BaseResponseModel.sendRequest(
        request: await _productNetworkManager.send<User, User>(
          ProductNetworkPaths.usersPatch.withJson(
            query: userId,
          ),
          queryParameters: {
            'auth': token,
          },
          parseModel: User(),
          data: user.toJson(),
          method: RequestType.PATCH,
        ),
      );

  @override
  Future<BaseResponseModel<List<User>>> getUsers({required String token}) async {
    final response = BaseResponseModel.sendRequest(
      request: await _productNetworkManager.send<Users, Users>(
        ProductNetworkPaths.usersPatch.withJson(query: ''),
        parseModel: Users(),
        queryParameters: {
          'auth': token,
        },
        method: RequestType.GET,
      ),
    );

    if (response.data == null) {
      return BaseResponseModel<List<User>>(
        data: [],
        error: response.error,
        status: response.status,
      );
    }

    final myData = response.data?.data?.entries.map((e) {
      if (e.value == null || e.value == '') return User();
      return User.fromJson(e.value as Map<String, dynamic>);
    }).toList();

    log(response.data.toString());
    log(myData.toString());

    final baseResponse = BaseResponseModel<List<User>>(
      data: myData,
      status: response.status,
    );

    return baseResponse;
  }

  @override
  Future<void> deleteUser({
    required String userId,
    required String token,
  }) {
    throw UnimplementedError();
  }

  // @override
  // Future<void> deleteUser({
  //   required String userId,
  //   required String token,
  // }) async =>
  //     BaseResponseModel<void>.sendRequest(
  //       request: await _productNetworkManager.send<Users, void>(
  //         ProductNetworkPaths.usersPatch.withJson(
  //           query: userId,
  //         ),
  //         queryParameters: {
  //           'auth': token,
  //         },
  //         parseModel: Users(),
  //         method: RequestType.DELETE,
  //       ),
  //     );
}
