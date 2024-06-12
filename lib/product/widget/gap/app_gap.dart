import 'package:flutter/material.dart';
import 'package:food_fiesta/product/widget/padding/app_padding.dart';

/// Padding attributes for the MY APP
final class AppGap extends Padding {
  const AppGap.extraSmall({super.key})
      : super(
          padding: const AppPadding.extraSmall(),
        );

  const AppGap.small({super.key})
      : super(
          padding: const AppPadding.small(),
        );

  const AppGap.smallBig({super.key})
      : super(
          padding: const AppPadding.allSmallBig(),
        );

  const AppGap.regular({super.key})
      : super(
          padding: const AppPadding.allRegular(),
        );

  const AppGap.big({super.key})
      : super(
          padding: const AppPadding.allBig(),
        );

  const AppGap.extraBig({super.key})
      : super(
          padding: const AppPadding.extraBig(),
        );

  AppGap.only({
    super.key,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    double left = 0.0,
  }) : super(
          padding: AppPadding.only(
            top: top,
            right: right,
            bottom: bottom,
            left: left,
          ),
        );
}
