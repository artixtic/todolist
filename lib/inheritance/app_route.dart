import 'package:flutter/material.dart';

class AppMaterialPageRoute extends MaterialPageRoute<dynamic> {
  dynamic Function()? beforePopScope;

  AppMaterialPageRoute({
    required super.builder,
    super.settings,
  });

  @override
  void didComplete(final dynamic result) {
    super.didComplete(result ?? beforePopScope?.call());
  }

  static AppMaterialPageRoute? of(final BuildContext context) {
    return ModalRoute.of(context) as AppMaterialPageRoute?;
  }
}
