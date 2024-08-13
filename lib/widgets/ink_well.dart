import 'package:flutter/material.dart';

class WCInkWell extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool isOnTop;
  final BorderRadius? borderRadius;
  final ShapeBorder? customBorder;
  final bool isCircle;
  final EdgeInsetsGeometry? padding;
  final InkWellOverlayBrightness overlayBrightness;

  const WCInkWell({
    this.child,
    this.isOnTop = false,
    this.onTap,
    this.onLongPress,
    this.borderRadius,
    this.customBorder,
    this.isCircle = false,
    this.padding,
    this.overlayBrightness = InkWellOverlayBrightness.dark,
  });

  @override
  Widget build(final BuildContext context) {
    if (isOnTop) {
      assert(child != null);
    }
    final Color overlayColor;
    switch (overlayBrightness) {
      case InkWellOverlayBrightness.dark:
        overlayColor = Colors.black.withOpacity(0.2);
        break;
      case InkWellOverlayBrightness.bright:
        overlayColor = Colors.white.withOpacity(0.2);
        break;
    }
    final inkWell = Material(
      color: Colors.transparent,
      textStyle: DefaultTextStyle.of(context).style,
      child: InkWell(
        borderRadius: isCircle == true ? null : borderRadius,
        customBorder:
            customBorder ?? (isCircle == true ? const CircleBorder() : null),
        splashColor: overlayColor,
        highlightColor: overlayColor,
        onTap: onTap,
        onLongPress: onLongPress,
        child: isOnTop
            ? null
            : Padding(
                padding: padding ?? EdgeInsets.zero,
                child: child,
              ),
      ),
    );
    if (isOnTop) {
      return Stack(
        children: [
          child!,
          Positioned.fill(
            child: inkWell,
          ),
        ],
      );
    } else {
      return inkWell;
    }
  }
}

enum InkWellOverlayBrightness {
  dark,
  bright,
}
