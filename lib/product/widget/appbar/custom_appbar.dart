import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/utility/constants/enums/app_values.dart';
import 'package:gen/gen.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
  });

  final String? title;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: widget.title != null ? Text(widget.title?.tr() ?? '') : null,
      centerTitle: true,
      leading: context.router.canPop()
          ? IconButton(
              onPressed: () => context.maybePop(),
              icon: Assets.icons.backIcon.svg(
                height: AppValues.large.value,
              ),
            )
          : null,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    );
  }
}
