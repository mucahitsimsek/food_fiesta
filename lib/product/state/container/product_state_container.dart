import 'package:food_fiesta/product/service/manager/product_network_manager.dart';
import 'package:food_fiesta/product/state/view_model/product_viev_model.dart';
import 'package:get_it/get_it.dart';

/// ProductStateContainer is a dependency injection class for product
final class ProductStateContainer {
  ///ProductStateContainer is a state container class for product
  ProductStateContainer._();
  static final _getIt = GetIt.I;

  ///Product core required network manager
  static void setup() {
    _getIt
      ..registerSingleton<ProductNetworkManager>(ProductNetworkManager.base())
      ..registerLazySingleton<ProductViewModel>(
        ProductViewModel.new,
      );
  }

  static T read<T extends Object>() => _getIt<T>();
}
