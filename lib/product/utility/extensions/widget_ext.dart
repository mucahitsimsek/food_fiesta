import 'package:flutter/material.dart';

extension CenterWidgetExt on Widget {
  Center get center => Center(
        child: this,
      );
}

extension ScalerWidget on Widget {
  Widget scale(double factor) {
    return Transform.scale(
      scale: factor,
      child: this,
    );
  }
}
