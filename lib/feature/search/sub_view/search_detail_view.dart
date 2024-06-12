import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/widget/scaffold/app_scaffold.dart';

@RoutePage()
class SearchDetailView extends StatelessWidget {
  const SearchDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: Text('SearchDetailView'),
    );
  }
}
