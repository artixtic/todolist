import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit.dart';
import 'pilot_state.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

export 'pilot_state.dart';

abstract class PilotBloc extends WCCubit<PilotState> {
  PilotBloc() : super(PilotState());

  static NavigatorState navigator<TBloc extends WCCubit<PilotState>>(
    final BuildContext context,
  ) =>
      BlocProvider.of<TBloc>(context).state.navigatorKey.currentState!;
}
