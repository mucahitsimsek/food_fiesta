import 'package:architecture_template/product/state/container/product_state_items.dart';
import 'package:architecture_template/product/state/view_model/product_viev_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///StateInitialize
class StateInitialize extends StatelessWidget {
  ///StateInitialize
  const StateInitialize({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductViewModel>.value(
          value: ProductStateItems.productViewModel,
        ),
      ],
      child: child,
    );
  }
}
