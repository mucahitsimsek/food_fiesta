import 'package:architecture_template/product/service/manager/index.dart';
import 'package:architecture_template/product/state/container/index.dart';
import 'package:architecture_template/product/state/view_model/product_viev_model.dart';
import 'package:flutter/material.dart';

///BaseState is a base class for state
abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ///ProductNetworkManager
  ProductNetworkManager get networkManager => ProductStateItems.networkManager;

  ///ProductViewModel
  ProductViewModel get productViewModel => ProductStateItems.productViewModel;
}
