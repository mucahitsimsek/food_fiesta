import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/feature/home/view_model/home_view_model.dart';
import 'package:architecture_template/product/service/login_service.dart';
import 'package:architecture_template/product/state/base/base_state.dart';

///
mixin HomeViewMixin on BaseState<HomeView> {
  late final HomeViewModel _homeViewModel;

  ///homeViewModel
  HomeViewModel get homeViewModel => _homeViewModel;

  @override
  void initState() {
    super.initState();
    _homeViewModel = HomeViewModel(
      authanticationOperation: LoginService(networkManager),
    );
  }
}
