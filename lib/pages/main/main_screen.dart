import 'package:flutter/material.dart';

import 'main_page.dart';

class MainScreen extends Page {
  const MainScreen();

  @override
  Route createRoute(final BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (final _) => const MainPage(),
    );
  }
}
