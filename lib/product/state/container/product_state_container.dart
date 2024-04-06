import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/cache/product_cache.dart';
import 'package:food_fiesta/product/service/manager/authentication_network_manager.dart';
import 'package:food_fiesta/product/service/manager/product_network_manager.dart';
import 'package:food_fiesta/product/state/view_model/product_viev_model.dart';
import 'package:get_it/get_it.dart';

/// ProductStateContainer is a dependency injection class for product
@immutable
final class ProductStateContainer {
  ///ProductStateContainer is a state container class for product
  const ProductStateContainer._();
  static final _getIt = GetIt.I;

  ///Product core required network manager
  static void setup() {
    _getIt
      ..registerSingleton<ProductCahe>(
        ProductCahe(
          cacheManager: HiveCacheManager(),
        ),
      )
      ..registerSingleton<ProductNetworkManager>(ProductNetworkManager.base())
      ..registerSingleton<AuthenticationNetworkManager>(AuthenticationNetworkManager.auth())
      ..registerLazySingleton<ProductViewModel>(
        ProductViewModel.new,
      );
  }

  static T read<T extends Object>() => _getIt<T>();
}
