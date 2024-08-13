import 'package:flutter/material.dart';

import '../../inheritance/app_route.dart';
import 'bloc/pilot_bloc.dart';

@immutable
abstract class Pilot<PBloc extends PilotBloc> extends StatelessWidget {
  final String initialRoute;

  const Pilot({
    required this.initialRoute,
  });

  Widget? getPage(final BuildContext context, final RouteSettings settings);

  PBloc createBloc(final BuildContext context);

  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
      create: createBloc,
      child: Builder(
        builder: (final context) {
          final navigatorKey =
              BlocProvider.of<PBloc>(context).state.navigatorKey;
          return WillPopScope(
            onWillPop: () async =>
                !(await navigatorKey.currentState!.maybePop()),
            child: Navigator(
              key: navigatorKey,
              initialRoute: initialRoute,
              onGenerateRoute: _onGenerateRoute,
              onPopPage: (final route, final result) {
                return route.didPop(result);
              },
            ),
          );
        },
      ),
    );
  }

  Route<dynamic>? _onGenerateRoute(final RouteSettings settings) {
    FocusManager.instance.primaryFocus?.unfocus();
    return AppMaterialPageRoute(
      builder: (final context) {
        final page = getPage(context, settings);
        if (page == null) {
          throw ArgumentError('Route ${settings.name} not handled yet');
        }
        return page;
      },
      settings: settings,
    );
  }
}
