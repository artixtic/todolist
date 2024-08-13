import 'package:built_value/built_value.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../../../../models/states/api_state.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  factory LoginState([
    final void Function(LoginStateBuilder) updates,
  ]) = _$LoginState;

  LoginState._();

  @BuiltValueHook(initializeBuilder: true)
  static void _initialize(final LoginStateBuilder b) => b
    ..email = ''
    ..password = '';

  @BlocUpdateField()
  String get email;

  @BlocUpdateField()
  String get password;

  ApiState<void> get loginApi;
}
