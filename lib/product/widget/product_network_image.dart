import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

///Network image widget with [ProductNetworkImage] lottie Loading
class ProductNetworkImage extends StatelessWidget {
  ///
  const ProductNetworkImage({
    required this.url,
    super.key,
  });

  ///Image url
  final String? url;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      loadingBuilder: Assets.lottie.animZombie.lottie(
        package: 'gen',
      ),
    );
  }
}
