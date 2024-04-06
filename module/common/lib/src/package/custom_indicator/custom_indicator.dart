import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// CustomIndicator
@immutable
final class CustomIndicator extends StatelessWidget {
  /// CustomIndicator
  const CustomIndicator({
    required this.controller,
    required this.pageCount,
    this.effect = Effect.worm,
    super.key,
  });

  /// controller
  final PageController controller;

  /// pageCount
  final int pageCount;

  /// Please Give Effect
  final Effect effect;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      effect: effect.chose(context),
      count: pageCount,
    );
  }
}

/// Effect
enum Effect {
  ///worm
  worm,

  ///jump
  jump,

  ///slide
  slide,

  ///scale
  scale,

  ///expandingDotsEffect
  expandingDotsEffect;

  /// chose effect
  IndicatorEffect chose(BuildContext context) {
    switch (this) {
      case Effect.worm:
        return const WormEffect();
      case Effect.jump:
        return const JumpingDotEffect();
      case Effect.slide:
        return const SlideEffect();
      case Effect.scale:
        return const ScaleEffect();
      case Effect.expandingDotsEffect:
        return ExpandingDotsEffect(
          dotHeight: MediaQuery.sizeOf(context).height * 0.01,
          activeDotColor: ColorName.green,
        );
    }
  }
}
