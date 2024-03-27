import 'package:flutter/material.dart';
import 'package:food_fiesta/product/widget/padding/app_padding.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({
    this.children = const [],
    this.crossAxisAlignment = CrossAxisAlignment.center,
    super.key,
  });

  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const AppPadding.symmetricHrzntlSmallBig(),
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: children,
      ),
    );
  }
}
