// ignore_for_file: type=lint, unused_element

part of 'login_bloc.dart';

// **************************************************************************
// BlocGenerator
// **************************************************************************

class LoginBlocBuilder extends StatelessWidget {
  final BlocWidgetBuilder<LoginState> builder;

  const LoginBlocBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: builder,
    );
  }
}

class LoginBlocSelector<T> extends StatelessWidget {
  final BlocWidgetSelector<LoginState, T> selector;
  final Widget Function(T state) builder;
  final LoginBloc? bloc;

  const LoginBlocSelector({
    final Key? key,
    required this.selector,
    required this.builder,
    this.bloc,
  }) : super(key: key);

  static LoginBlocSelector<String> email({
    final Key? key,
    required Widget Function(String email) builder,
    final LoginBloc? bloc,
  }) {
    return LoginBlocSelector(
      key: key,
      selector: (state) => state.email,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static LoginBlocSelector<String> password({
    final Key? key,
    required Widget Function(String password) builder,
    final LoginBloc? bloc,
  }) {
    return LoginBlocSelector(
      key: key,
      selector: (state) => state.password,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static LoginBlocSelector<ApiState<void>> loginApi({
    final Key? key,
    required Widget Function(ApiState<void> loginApi) builder,
    final LoginBloc? bloc,
  }) {
    return LoginBlocSelector(
      key: key,
      selector: (state) => state.loginApi,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  @override
  Widget build(final BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, T>(
      selector: selector,
      builder: (_, value) => builder(value),
      bloc: bloc,
    );
  }
}

mixin _LoginBlocMixin on Cubit<LoginState> {
  @mustCallSuper
  void updateEmail(final String email) {
    if (state.email == email) {
      return;
    }

    emit(state.rebuild((final b) => b.email = email));

    $onUpdateEmail();
  }

  @protected
  void $onUpdateEmail() {}

  @mustCallSuper
  void updatePassword(final String password) {
    if (state.password == password) {
      return;
    }

    emit(state.rebuild((final b) => b.password = password));

    $onUpdatePassword();
  }

  @protected
  void $onUpdatePassword() {}
}
