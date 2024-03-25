import 'package:flutter/material.dart';
import 'package:food_fiesta/product/widget/text/title_text.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    required this.onPressed,
    required this.title,
    this.fontWeight = FontWeight.w300,
    this.color,
    super.key,
  });

  final void Function()? onPressed;
  final String title;
  final Color? color;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: TitleText(
        text: title,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
