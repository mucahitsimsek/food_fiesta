import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// It will be used to show the image from the network.
class CustomNetworkImage extends StatelessWidget {
  ///Consturctor of [CustomNetworkImage]
  const CustomNetworkImage({
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.boxFit = BoxFit.contain,
    this.loadingBuilder = const CircularProgressIndicator(),
    this.size,
  });

  ///ImageUrl of the image
  final String? imageUrl;

  ///Empty widget to show when the image is not available
  final Widget? emptyWidget;

  ///BoxFit of the image
  final BoxFit? boxFit;

  ///Loading builder of the image
  final Widget? loadingBuilder;

  /// It will be used to show the image from the network.
  final Size? size;
  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) {
      return emptyWidget ?? const Icon(Icons.image_not_supported);
    }

    return CachedNetworkImage(
      imageUrl: url,
      fit: boxFit,
      progressIndicatorBuilder: (context, url, progress) {
        return loadingBuilder ??
            const Center(
              child: CircularProgressIndicator(),
            );
      },
      errorListener: (value) =>
          kDebugMode ? debugPrint(value.toString()) : null,
      errorWidget: (context, url, error) =>
          emptyWidget ?? const Icon(Icons.image_not_supported),
      width: size?.width,
      height: size?.height,
    );
  }
}
