import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/navigation/app_routes.dart';
import 'package:food_fiesta/product/widget/app_column.dart';
import 'package:food_fiesta/product/widget/scaffold/app_scaffold.dart';

@RoutePage()
class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: AppColumn(
        children: [
          TextButton(
            onPressed: () {
              context.pushRoute(AppRoutes.searchDetailView.route);
            },
            child: const Text('S'),
          ),
        ],
      ),
    );
  }
}
