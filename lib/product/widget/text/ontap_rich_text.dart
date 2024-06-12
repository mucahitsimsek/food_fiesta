import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

class OnTapRichText extends StatelessWidget {
  const OnTapRichText({
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  final String title;
  final String description;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title.tr(),
        style: context.general.textTheme.titleMedium!.copyWith(
          color: ColorName.bodyText,
        ),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: '\t${description.tr()}',
            style: context.general.textTheme.titleMedium!.copyWith(
              color: ColorName.activeColorOne,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
