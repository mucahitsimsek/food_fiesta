import 'package:architecture_template/product/utility/constants/enums/app_values.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    required this.title,
    this.onPressed,
    this.onLongPress,
    this.width,
    this.color,
    this.leftWidget,
    this.rightWidget,
    super.key,
  });

  final String title;

  final void Function()? onPressed;

  final void Function()? onLongPress;

  final double? width;

  final Color? color;

  final Widget? leftWidget;

  final Widget? rightWidget;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? context.sized.width,
      child: Stack(
        children: [
          SizedBox(
            width: widget.width ?? context.sized.width,
            child: ElevatedButton(
              onPressed: widget.onPressed,
              onLongPress: widget.onLongPress,
              style: ButtonStyle(
                backgroundColor: widget.color != null
                    ? MaterialStateProperty.all<Color>(
                        widget.color!,
                      )
                    : null,
              ),
              child: Text(
                widget.title.tr().toUpperCase(),
                style: TextStyle(
                  fontSize: AppValues.semiMedium.value,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          if (widget.leftWidget != null)
            Align(
              alignment: Alignment.centerLeft,
              child: widget.leftWidget,
            )
          else
            const SizedBox(),
          if (widget.rightWidget != null)
            Align(
              alignment: Alignment.centerRight,
              child: widget.rightWidget,
            )
          else
            const SizedBox(),
        ],
      ),
    );
  }
}
