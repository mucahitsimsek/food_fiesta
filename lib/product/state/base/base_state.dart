import 'package:flutter/material.dart';
import 'package:food_fiesta/product/cache/product_cache.dart';
import 'package:food_fiesta/product/service/manager/authentication_network_manager.dart';
import 'package:food_fiesta/product/service/manager/product_network_manager.dart';
import 'package:food_fiesta/product/state/container/product_state_items.dart';
import 'package:food_fiesta/product/state/view_model/product_viev_model.dart';
import 'package:widgets/widgets.dart';

///BaseState is a base class for state
abstract class BaseState<T extends StatefulWidget> extends State<T> with MountedMixin<T> {
  ///ProductNetworkManager
  ProductNetworkManager get networkManager => ProductStateItems.networkManager;

  ///ProductViewModel
  ProductViewModel get productViewModel => ProductStateItems.productViewModel;

  ///AuthenticationNetworkManager
  AuthenticationNetworkManager get authNetworkManager => ProductStateItems.authNetworkManager;

  ProductCahe get productCache => ProductStateItems.productCache;
}
