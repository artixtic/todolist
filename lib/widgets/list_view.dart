import 'package:flutter/material.dart';

class NoGlowListViewWrapper extends StatelessWidget {
  final Widget child;

  const NoGlowListViewWrapper({
    required this.child,
  });

  @override
  Widget build(final BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (final overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: child,
    );
  }
}
