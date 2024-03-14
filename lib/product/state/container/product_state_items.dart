import 'package:architecture_template/product/service/manager/product_network_manager.dart';
import 'package:architecture_template/product/state/container/product_state_container.dart';
import 'package:architecture_template/product/state/view_model/product_viev_model.dart';

///ProductStateContainer is a state container class for product
final class ProductStateItems {
  ///ProductStateContainer is a state container class for product
  ProductStateItems._();

  ///ProductStateContainer is a state container class for product
  static ProductNetworkManager get networkManager =>
      ProductStateContainer.read<ProductNetworkManager>();

  ///ProductViewModel is a view model class for product
  static ProductViewModel get productViewModel =>
      ProductStateContainer.read<ProductViewModel>();
}
