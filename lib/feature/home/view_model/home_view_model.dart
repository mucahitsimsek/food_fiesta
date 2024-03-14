import 'package:architecture_template/feature/home/view_model/state/home_state.dart';
import 'package:architecture_template/product/service/interface/authantication_opeartion.dart';
import 'package:architecture_template/product/state/base/base_cubit.dart';

///HomeViewModel is a model business
class HomeViewModel extends BaseCubit<HomeState> {
  ///constructor
  HomeViewModel({required AuthanticationOperation authanticationOperation})
      : _authOperation = authanticationOperation,
        super(
          const HomeState(
            isLoading: false,
          ),
        );

  late final AuthanticationOperation _authOperation;

  ///change loading state
  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  bool get isLoading => state.isLoading;

  Future<void> fetchUsers() async {
    final response = await _authOperation.users();
    emit(
      state.copyWith(users: response),
    );
  }
}
