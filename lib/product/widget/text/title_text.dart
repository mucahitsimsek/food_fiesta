import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    required this.text,
    this.maxLines,
    this.textAlign = TextAlign.center,
    this.fontWeight = FontWeight.w300,
    this.color,
    super.key,
  });
  final String text;
  final int? maxLines;
  final TextAlign textAlign;
  final Color? color;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: context.general.textTheme.titleMedium!.copyWith(
        fontWeight: fontWeight,
        color: color,
      ),
    ).tr();
  }
}
