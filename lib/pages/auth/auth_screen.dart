import 'package:flutter/material.dart';
import 'package:todolist/pages/auth/auth_page.dart';

class AuthScreen extends Page {
  const AuthScreen();

  @override
  Route createRoute(BuildContext context) {
    // TODO: implement createRoute
    return MaterialPageRoute(settings: this, builder: (_) => AuthPage());
  }
}
