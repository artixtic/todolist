import 'package:bloc/bloc.dart';
import 'package:built_value/built_value.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

export 'dart:async';

final _logger = Logger('cubit.dart');

abstract class WCCubit<State> extends Cubit<State> {
  WCCubit(final State initialState) : super(initialState);

  @override
  void emit(final State state) {
    if (isClosed) {
      return;
    }
    super.emit(state);
  }

  @override
  void onError(final Object error, final StackTrace stackTrace) {
    _logger.severe('onError: $error', error, stackTrace);
    super.onError(error, stackTrace);
  }
}

abstract class BVCubit<V extends Built<V, B>, B extends Builder<V, B>>
    extends WCCubit<V> {
  BVCubit(final V initialState) : super(initialState);
}
