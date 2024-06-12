import 'package:flutter/material.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/widget/button/app_button.dart';

final class GetStartedButton extends StatelessWidget {
  const GetStartedButton._({
    required this.onPressed,
  });

  /// This factory is used in the IntroductionView
  factory GetStartedButton.forIntroduction({
    required VoidCallback onPressed,
  }) {
    return GetStartedButton._(
      onPressed: onPressed,
    );
  }

  /// This factory is used in the WelcomeView
  factory GetStartedButton.forWelcome({
    required VoidCallback onPressed,
  }) {
    return GetStartedButton._(
      onPressed: onPressed,
    );
  }

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: LocaleKeys.general_button_getStarted,
      child: AppButton(
        title: LocaleKeys.general_button_getStarted,
        onPressed: onPressed,
      ),
    );
  }
}
