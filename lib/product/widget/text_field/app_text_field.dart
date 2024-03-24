import 'package:architecture_template/product/utility/constants/enums/app_values.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    this.controller,
    this.hintText,
    this.obscureText,
    this.suffixIcon,
    super.key,
  });

  final TextEditingController? controller;

  final String? hintText;

  final bool? obscureText;

  final Widget? suffixIcon;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool obscureText = false;
  TextEditingController? controller;
  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {
    if (widget.obscureText != null) {
      setState(() {
        obscureText = widget.obscureText ?? false;
      });
    }

    if (widget.controller != null) {
      setState(() {
        controller = widget.controller;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sized.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.hintText != null)
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.hintText?.toUpperCase() ?? '',
                style: TextStyle(
                  color: ColorName.bodyText, // Metin rengi
                  fontSize: AppValues.smallBig.value, // Metin boyutu
                ),
              ),
            )
          else
            Container(),
          TextFormField(
            controller: widget.controller ?? controller,
            decoration: InputDecoration(
              hintText: widget.hintText ?? '',
              suffixIcon: widget.suffixIcon ??
                  (widget.obscureText != null
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          icon: Icon(
                            obscureText ? Icons.visibility_off : Icons.visibility,
                            color: ColorName.bodyText,
                          ),
                        )
                      : null),
            ),
            obscureText: obscureText,
            style: context.general.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: ColorName.mainColorBlack,
            ),
          ),
        ],
      ),
    );
  }
}