import 'package:flutter/material.dart';

import '../core/config.dart';
import '../models/enums/environment.dart';

class EnvModeBanner extends StatelessWidget {
  final Widget child;

  const EnvModeBanner({
    required this.child,
  });

  @override
  Widget build(final BuildContext context) {
    final dartEnv = config.environment;
    if (dartEnv == Environment.production) {
      return child;
    }
    return Banner(
      message: dartEnv.name,
      textDirection: TextDirection.ltr,
      location: BannerLocation.topEnd,
      child: child,
    );
  }
}
