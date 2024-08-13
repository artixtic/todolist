import 'package:flutter/material.dart';

import 'progress_indicator.dart';

class LoadingWidget extends StatelessWidget {
  final Widget? label;
  final LoadingWidgetIcon? prefixIcon;
  final LoadingWidgetIcon? suffixIcon;
  final bool isLoading;
  final double? loadingProgress;

  const LoadingWidget({
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

    return label!;
  }
}

class LoadingWidgetIcon {
  final String icon;
  final double? width;
  final double? height;
  final double? size;
  final Color? color;
  final bool isColorDynamic;

  LoadingWidgetIcon({
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
