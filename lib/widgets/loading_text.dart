import 'package:flutter/material.dart';

import 'image.dart';
import 'progress_indicator.dart';

class LoadingText extends StatelessWidget {
  final String? label;
  final LoadingTextIcon? prefixIcon;
  final LoadingTextIcon? suffixIcon;
  final bool isLoading;
  final double? loadingProgress;

  const LoadingText({
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.isLoading = false,
    this.loadingProgress,
  });

  @override
  Widget build(final BuildContext context) {
    final buttonStyle = ElevatedButtonTheme.of(context).style;
    if (isLoading) {
      return ButtonProgressIndicator(
        value: loadingProgress,
      );
    }
    final foregroundColor = buttonStyle?.foregroundColor?.resolve({});

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (prefixIcon != null) ...[
          WCImage(
            prefixIcon!.icon,
            color: prefixIcon!.isColorDynamic
                ? foregroundColor
                : prefixIcon!.color,
            width: prefixIcon!.size ?? prefixIcon!.width,
            height: prefixIcon!.size ?? prefixIcon!.height,
            fit: BoxFit.contain,
          ),
          if (label != null) ...[
            const SizedBox(width: 12),
          ],
        ],
        if (label != null) ...[
          Text(
            label!,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
        if (suffixIcon != null) ...[
          if (label != null) ...[
            const SizedBox(width: 12),
          ],
          WCImage(
            suffixIcon!.icon,
            color: suffixIcon!.isColorDynamic
                ? foregroundColor
                : suffixIcon!.color,
            width: suffixIcon!.size ?? suffixIcon!.width,
            height: suffixIcon!.size ?? suffixIcon!.height,
            fit: BoxFit.contain,
          ),
        ],
      ],
    );
  }
}

class LoadingTextIcon {
  final String icon;
  final double? width;
  final double? height;
  final double? size;
  final Color? color;
  final bool isColorDynamic;

  LoadingTextIcon({
    required this.icon,
    this.width,
    this.height,
    this.size,
    this.color,
    this.isColorDynamic = false,
  }) {
    if (isColorDynamic) {
      assert(color == null);
    }
  }
}
