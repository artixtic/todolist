import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../inheritance/asset_bundle.dart';

final _assetBundle = ByteDataAssetBundle();

class WCImage extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  final double? size;
  final Color? color;
  final bool isIcon;
  final Widget? placeholder;
  final BoxFit? fit;

  const WCImage(
    this.image, {
    this.width,
    this.height,
    this.size,
    this.color,
    this.isIcon = false,
    this.placeholder,
    this.fit,
  });

  @override
  Widget build(final BuildContext context) {
    final iconTheme = IconTheme.of(context);
    final mColor = color ?? (isIcon ? iconTheme.color : null);
    final mWidth = size ?? width ?? (isIcon ? iconTheme.size : null);
    final mHeight = size ?? height ?? (isIcon ? iconTheme.size : null);
    Widget child;
    if (image.startsWith('https://') || image.startsWith('http://')) {
      child = CachedNetworkImage(
        imageUrl: image,
        fit: fit,
        placeholder: placeholder == null
            ? null
            : (final context, final _) => placeholder!,
      );
    } else if (image.startsWith('/')) {
      child = Image.file(
        File(image),
        fit: fit,
      );
    } else if (image.endsWith('.svg')) {
      child = SvgPicture(
        AssetBytesLoader(
          '$image.vec',
          assetBundle: _assetBundle,
        ),
        colorFilter: mColor == null
            ? null
            : ColorFilter.mode(
                mColor,
                BlendMode.srcIn,
              ),
        fit: fit ?? BoxFit.contain,
        width: mWidth,
        height: mHeight,
      );
    } else {
      child = Image.asset(
        image,
        color: mColor,
        fit: fit,
      );
    }
    if (context.findAncestorWidgetOfExactType<TextFormField>() != null) {
      child = Center(
        child: child,
      );
    }
    return SizedBox(
      width: mWidth,
      height: mHeight,
      child: child,
    );
  }
}
