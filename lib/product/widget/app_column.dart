import 'package:architecture_template/product/widget/padding/app_padding.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({
    this.children = const [],
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const AppPadding.symmetricHrzntlSmallBig(),
      child: Column(
        children: children,
      ),
    );
  }
}
