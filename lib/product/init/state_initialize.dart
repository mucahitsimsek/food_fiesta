import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fiesta/feature/auth/view_model/auth_bloc/auth_bloc.dart';
import 'package:food_fiesta/product/state/container/product_state_items.dart';
import 'package:food_fiesta/product/state/view_model/product_viev_model.dart';

///StateInitialize
final class StateInitialize extends StatelessWidget {
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
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.noScaling,
        ),
        child: child,
      ),
    );
  }
}
