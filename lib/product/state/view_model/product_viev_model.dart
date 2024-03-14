import 'package:architecture_template/product/state/base/base_cubit.dart';
import 'package:architecture_template/product/state/view_model/product_state.dart';
import 'package:flutter/material.dart';

///ProductViewModel
class ProductViewModel extends BaseCubit<ProductState> {
  ///initialState
  ProductViewModel() : super(const ProductState());

  ///setThemeMode
  void setThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }
}
