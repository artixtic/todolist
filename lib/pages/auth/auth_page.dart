import 'package:flutter/material.dart';
import 'package:todolist/pages/auth/login/login_page.dart';
import 'package:todolist/widgets/navigator/nested_navigator.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedNavigator(
      firstPageBuilder: (final _) => LoginPage(),
    );
  }
}
