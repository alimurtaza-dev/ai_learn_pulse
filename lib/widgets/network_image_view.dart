import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'shimmer_widget.dart';

class NetworkImageView extends StatelessWidget {
  final String? _imageUrl;
  final BoxFit fit;
  final double? height;
  final double? width;
  final Color? color;

  const NetworkImageView(
    this._imageUrl, {
    super.key,
    this.fit = BoxFit.cover,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return (_imageUrl == null || _imageUrl.isEmpty)
        ? _buildErrorView()
        : CachedNetworkImage(
            height: height,
            width: width,
            imageUrl: _imageUrl,
            fit: fit,
            placeholder: (_, __) => const ShimmerLoadingWidget(
              isLoading: true,
              child: ColoredBox(color: Colors.black),
            ),
            errorWidget: (_, __, ___) => _buildErrorView(),
          );
  }

  Widget _buildErrorView() => ColoredBox(
        color: Colors.grey,
        child: Assets.appIcons.placeHolder.svg(
          fit: BoxFit.cover,
          colorFilter:
              color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
          height: height,
          width: width,
        ),
      );
}
