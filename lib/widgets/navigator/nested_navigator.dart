import 'package:flutter/material.dart';

class NestedNavigator extends StatefulWidget {
  final WidgetBuilder firstPageBuilder;

  const NestedNavigator({
    required this.firstPageBuilder,
  });

  @override
  State<NestedNavigator> createState() => _NestedNavigatorState();
}

class _NestedNavigatorState extends State<NestedNavigator> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(final BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !(await _navigatorKey.currentState!.maybePop());
      },
      child: Navigator(
        key: _navigatorKey,
        onGenerateRoute: (final settings) => MaterialPageRoute(
          settings: settings,
          builder: widget.firstPageBuilder,
        ),
        onPopPage: (final route, final result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
