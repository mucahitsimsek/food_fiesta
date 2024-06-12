import 'package:flutter/material.dart';
import 'package:food_fiesta/product/utility/extensions/widget_ext.dart';

class AppLoadingButton extends StatelessWidget {
  const AppLoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: null,
        child: const CircularProgressIndicator.adaptive().scale(0.9),
      ),
    );
  }
}
