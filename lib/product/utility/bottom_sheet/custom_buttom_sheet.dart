import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@immutable
final class CustomButtomSheet {
  const CustomButtomSheet._();

  static void show({
    required BuildContext context,
    required Widget child,
    bool hasAutoClose = false,
  }) {
    showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        if (hasAutoClose) {
          Future.delayed(Durations.extralong4 + Durations.extralong4, () {
            context.maybePop();
          });
        }

        return GestureDetector(
          onTap: () => context.maybePop(),
          child: child,
        );
      },
    );
  }
}
