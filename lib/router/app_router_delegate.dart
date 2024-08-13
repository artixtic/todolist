import 'package:flutter/material.dart';
import 'package:todolist/pages/auth/auth_screen.dart';
import 'package:todolist/pages/main/main_screen.dart';

import '../bloc/profile_bloc.dart';

class AppRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  Widget build(final BuildContext context) {
    return ProfileBlocSelector(
      selector: (final state) => state != null,
      builder: (final isLoggedIn) {
        return Navigator(
          key: navigatorKey,
          pages: [
            if (isLoggedIn) ...[
              const MainScreen(),
            ] else ...[
              const AuthScreen(),
            ],
          ],
          onPopPage: (final route, final result) {
            if (!route.didPop(result)) return false;
            return true;
          },
        );
      },
    );
  }

  @override
  Future<void> setNewRoutePath(final _) async {}
}
