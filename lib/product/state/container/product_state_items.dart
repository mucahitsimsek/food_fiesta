import 'package:flutter/material.dart';
import 'package:food_fiesta/product/cache/product_cache.dart';
import 'package:food_fiesta/product/service/manager/authentication_network_manager.dart';
import 'package:food_fiesta/product/service/manager/product_network_manager.dart';
import 'package:food_fiesta/product/state/container/product_state_container.dart';
import 'package:food_fiesta/product/state/view_model/product_viev_model.dart';

///ProductStateContainer is a state container class for product
@immutable
final class ProductStateItems {
  ///ProductStateContainer is a state container class for product
  const ProductStateItems._();

  ///ProductStateContainer is a state container class for product
  static ProductNetworkManager get networkManager =>
      ProductStateContainer.read<ProductNetworkManager>();

  ///ProductViewModel is a view model class for product
  static ProductViewModel get productViewModel => ProductStateContainer.read<ProductViewModel>();

  static AuthenticationNetworkManager get authNetworkManager =>
      ProductStateContainer.read<AuthenticationNetworkManager>();

  static ProductCahe get productCache => ProductStateContainer.read<ProductCahe>();
}
