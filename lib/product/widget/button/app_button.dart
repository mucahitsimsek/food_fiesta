import 'package:architecture_template/product/utility/constants/enums/app_values.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    required this.title,
    this.onPressed,
    this.onLongPress,
    super.key,
  });

  final String title;

  final void Function()? onPressed;

  final void Function()? onLongPress;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sized.width * 0.9,
      child: ElevatedButton(
        onPressed: widget.onPressed ?? () {},
        onLongPress: widget.onLongPress ?? () {},
        child: Text(
          widget.title.toUpperCase(),
          style: TextStyle(
            fontSize: AppValues.semiMedium.value,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
