// ignore_for_file: type=lint, unused_element

part of 'startup_bloc.dart';

// **************************************************************************
// BlocGenerator
// **************************************************************************

class StartupBlocBuilder extends StatelessWidget {
  final BlocWidgetBuilder<StartupState> builder;

  const StartupBlocBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<StartupBloc, StartupState>(
      builder: builder,
    );
  }
}

class StartupBlocSelector<T> extends StatelessWidget {
  final BlocWidgetSelector<StartupState, T> selector;
  final Widget Function(T state) builder;
  final StartupBloc? bloc;

  const StartupBlocSelector({
    final Key? key,
    required this.selector,
    required this.builder,
    this.bloc,
  }) : super(key: key);

  static StartupBlocSelector<ApiState<void>> everythingApi({
    final Key? key,
    required Widget Function(ApiState<void> everythingApi) builder,
    final StartupBloc? bloc,
  }) {
    return StartupBlocSelector(
      key: key,
      selector: (state) => state.everythingApi,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  static StartupBlocSelector<int?> index({
    final Key? key,
    required Widget Function(int? index) builder,
    final StartupBloc? bloc,
  }) {
    return StartupBlocSelector(
      key: key,
      selector: (state) => state.index,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  @override
  Widget build(final BuildContext context) {
    return BlocSelector<StartupBloc, StartupState, T>(
      selector: selector,
      builder: (_, value) => builder(value),
      bloc: bloc,
    );
  }
}

mixin _StartupBlocMixin on Cubit<StartupState> {
  @mustCallSuper
  void updateIndex(final int? index) {
    if (state.index == index) {
      return;
    }

    emit(state.rebuild((final b) => b.index = index));

    $onUpdateIndex();
  }

  @protected
  void $onUpdateIndex() {}
}
