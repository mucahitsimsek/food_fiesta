import 'package:flutter/material.dart';
import 'package:food_fiesta/product/widget/appbar/custom_appbar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    this.hasAppBar = true,
    this.appBarText,
    super.key,
  });

  ///This initial value is true
  final bool hasAppBar;

  ///Please give a Some [Widget] to this parameter
  final Widget body;

  ///This is the text that will be displayed on the [AppBar]
  final String? appBarText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: SingleChildScrollView(
        child: body,
      ),
    );
  }

  PreferredSizeWidget? get _appBar {
    if (hasAppBar && appBarText != null) {
      return CustomAppBar(
        title: appBarText,
      );
    } else if (hasAppBar) {
      return const CustomAppBar();
    }
    return null;
  }
}
