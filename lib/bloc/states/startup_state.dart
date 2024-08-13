import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../../models/states/api_state.dart';

part 'startup_state.g.dart';

abstract class StartupState
    implements Built<StartupState, StartupStateBuilder> {
  factory StartupState([
    final void Function(StartupStateBuilder) updates,
  ]) = _$StartupState;

  StartupState._();

  @BuiltValueHook(initializeBuilder: true)
  static void _initialize(final StartupStateBuilder b) {
    b.index = 0;
  }

  ApiState<void> get everythingApi;

  @BlocUpdateField()
  int? get index;
}
