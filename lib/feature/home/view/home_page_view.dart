import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/state/base/base_state.dart';
import 'package:food_fiesta/product/widget/app_column.dart';
import 'package:food_fiesta/product/widget/scaffold/app_scaffold.dart';

@RoutePage()
class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends BaseState<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: AppColumn(),
    );
  }
}
