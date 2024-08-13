import 'package:flutter/material.dart';

Future<T?> pushMaterialPageRoute<T>(
  final BuildContext context, {
  required final String? name,
  required final WidgetBuilder builder,
}) {
  return Navigator.push<T>(
    context,
    MaterialPageRoute(
      builder: builder,
      settings: RouteSettings(
        name: name,
      ),
    ),
  );
}

Future pushReplacementMaterialPageRoute<T>(
  final BuildContext context, {
  required final String? name,
  required final WidgetBuilder builder,
}) {
  return Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: builder,
      settings: RouteSettings(
        name: name,
      ),
    ),
  );
}
