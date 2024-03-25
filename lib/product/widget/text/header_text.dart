import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    required this.text,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    super.key,
  });
  final String text;
  final int maxLines;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: context.general.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w500,
      ),
    ).tr();
  }
}
