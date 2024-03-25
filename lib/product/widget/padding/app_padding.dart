import 'package:flutter/material.dart';

/// Padding attributes for the MY APP
final class AppPadding extends EdgeInsets {
  /// [AppPadding.small] 8 point small size padding for all
  const AppPadding.extraSmall() : super.all(4);

  /// [AppPadding.small] 8 point small size padding for all
  const AppPadding.small() : super.all(8);

  /// [AppPadding.allSmallBig] smallBig all padding size
  const AppPadding.allSmallBig() : super.all(12);

  /// [AppPadding.symmetricVerticalRegular] regular symmetric Vertical padding
  const AppPadding.symmetricVerticalRegular()
      : super.symmetric(
          vertical: 8,
        );

  /// [AppPadding.allRegular] regular all padding size
  const AppPadding.allRegular() : super.all(20);

  /// [AppPadding.allBig] big all padding size
  const AppPadding.allBig() : super.all(30);

  /// [AppPadding.allBig] big all padding size
  const AppPadding.extraBig() : super.all(40);

  /// [AppPadding.symmetricHorizontalRegular] regular horizontal padding size
  const AppPadding.symmetricHrzntlSmall()
      : super.symmetric(
          horizontal: 8,
        );

  /// [AppPadding.symmetricHorizontalRegular] regular horizontal padding size
  const AppPadding.symmetricHrzntlSmallBig()
      : super.symmetric(
          horizontal: 12,
        );

  /// [AppPadding.symmetricHorizontalRegular] regular horizontal padding size
  const AppPadding.symmetricHorizontalRegular()
      : super.symmetric(
          horizontal: 20,
        );

  /// [AppPadding.symmetricHorizontalBig] big horizontal padding size
  const AppPadding.symmetricHorizontalBig()
      : super.symmetric(
          horizontal: 30,
        );

  /// [AppPadding.only] only
  const AppPadding.only({
    super.top,
    super.right,
    super.bottom,
    super.left,
  }) : super.only();
}
